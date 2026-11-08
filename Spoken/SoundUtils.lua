setfenv(1, SpokenEnv)

-- The bottom of the playback stack: whether sound can be heard, and starting and stopping
-- one file. Everything above this deals in clips; only this file calls PlaySoundFile.
--
-- The audibility check looks at the volumes as well as the toggles, and Master bypasses the
-- per-channel toggles.
SoundUtils = {}

-- A channel this player switched off on a source's behalf: the quests addon mutes
-- Dialog while its line speaks so the NPC's bark does not talk over it. The queue
-- treats such a channel as audible at admission and lifts the mute before playing on
-- it -- the alternative is refusing every places clip that arrives during a quest line.
local CHANNEL_CVARS = { SFX = "Sound_EnableSFX", Music = "Sound_EnableMusic", Ambience = "Sound_EnableAmbience", Dialog = "Sound_EnableDialog" }
local mutedByPlayer = {}

-- A fadeOut mute steps the Dialog volume down, switches the channel off, then restores the volume,
-- so the player's own setting never changes. Unmuting mid-fade or logging out restores it at once.
local DIALOG_FADE, FADE_STEP = 0.5, 0.05
local fade
local function EndFade()
    if not fade then return end
    Addon:CancelTimer(fade.timer)
    if fade.volume then SetCVar("Sound_DialogVolume", fade.volume) end
    fade = nil
end
-- OtherSounds fades the Dialog volume itself when it lowers NPC voices. Two fades on one volume
-- undo each other, so then the mute only switches the channel off.
local function OthersLowerDialog()
    local audio = Addon.db and Addon.db.profile.Audio
    local lower = audio and audio.LowerOthers
    return lower and lower.Enabled and (lower.Dialog or 1) < 1 and OtherSounds and OtherSounds:IsAvailable()
end

---@param channel string
---@param muted boolean
---@param fadeOut boolean? fade the Dialog channel out rather than cut it
function SoundUtils:MuteChannel(channel, muted, fadeOut)
    local cvar = CHANNEL_CVARS[channel]
    if not cvar or (mutedByPlayer[channel] or false) == (muted or false) then
        return
    end
    -- Lifting a mute switches the channel on, so holding one the player had off would turn
    -- their switched-off NPC voices back on once the line ends.
    if muted and tonumber(GetCVar(cvar)) ~= 1 then
        Developer:Log("player", "%s channel already off, not muted", channel)
        return
    end
    mutedByPlayer[channel] = muted or nil
    -- Why an NPC was or was not heard over a line, in the debug log.
    Developer:Log("player", "%s channel %s", channel, muted and "muted" or "restored")
    if channel == "Dialog" then EndFade() end
    if muted and fadeOut and channel == "Dialog" then
        local volume = tonumber(GetCVar("Sound_DialogVolume")) or 1
        local ours = not OthersLowerDialog()
        local started = GetTime()
        fade = { volume = ours and volume or nil }
        fade.timer = Addon:ScheduleRepeatingTimer(function()
            local k = (GetTime() - started) / DIALOG_FADE
            if k >= 1 then
                SetCVar(cvar, 0)
                EndFade()
            elseif ours then
                SetCVar("Sound_DialogVolume", volume * (1 - k))
            end
        end, FADE_STEP)
        return
    end
    SetCVar(cvar, muted and 0 or 1)
end

function SoundUtils:IsMutedByPlayer(channel)
    return mutedByPlayer[channel] or false
end

-- The CVar is saved with the client's settings and the record of muting it is not: a
-- logout or /reload mid-line left Dialog off in every later session, with nothing in
-- the new one knowing to lift it. PLAYER_LOGOUT fires on /reload too.
local restoreFrame = CreateFrame("Frame")
restoreFrame:RegisterEvent("PLAYER_LOGOUT")
restoreFrame:SetScript("OnEvent", function()
    for channel in pairs(mutedByPlayer) do
        SoundUtils:MuteChannel(channel, false)
    end
    if SoundUtils.RestoreMusicImmediate then
        SoundUtils:RestoreMusicImmediate()
    end
end)

--- Why sound on the given channel cannot be heard right now, or nil when it can.
--- PlaySoundFile returns false both for a missing file and for a muted channel, so
--- without asking first those two are indistinguishable -- and they want opposite
--- responses from whoever is reading the message.
---@param channel string "Master" | "SFX" | "Music" | "Ambience" | "Dialog"
---@return string|nil reason
function SoundUtils:WhyInaudible(channel)
    if tonumber(GetCVar("Sound_EnableAllSound")) ~= 1 then
        return "all sound is disabled"
    end
    if (tonumber(GetCVar("Sound_MasterVolume")) or 1) <= 0 then
        return "the master volume is 0"
    end
    if channel == "Master" then
        return nil
    end
    local enableCVar = format("Sound_Enable%s", channel)
    local enableVal = GetCVar(enableCVar)
    if enableVal == nil then
        -- En WotLK 3.3.5a no existe Sound_EnableDialog; PlaySoundFile usa siempre el canal SFX.
        enableVal = GetCVar("Sound_EnableSFX")
    end
    if enableVal ~= nil and tonumber(enableVal) ~= 1 then
        return format("the %s sound channel is disabled", channel)
    end
    local volCVar = format("Sound_%sVolume", channel)
    local volVal = GetCVar(volCVar)
    if volVal == nil then
        volVal = GetCVar("Sound_SFXVolume")
    end
    if (tonumber(volVal) or 1) <= 0 then
        return format("the %s sound channel volume is 0", channel)
    end
    return nil
end

--- Plays the file and stops it at once, to learn whether it exists. Also false when the
--- channel is muted; ask WhyInaudible first to tell the two apart. The probe has to go
--- out on the channel the clip will play on: without one the client uses SFX, and a
--- player with effects switched off gets every file reported missing.
---@param clip { path: string, length?: number }
---@param channel string
---@return boolean exists
function SoundUtils:TestSound(clip, channel)
    channel = channel or "Master"
    if clip and clip.length and clip.length > 0 then
        return true
    end
    -- En WotLK 3.3.5a (sin StopSound por handle) PlaySoundFile siempre devuelve 1 y lanza un stream
    -- FMOD que habria que reiniciar para cortar; evitamos iniciar una doble reproduccion.
    if not StopSound then
        return clip and clip.path ~= nil or false
    end
    local willPlay, handle = PlaySoundFile(clip.path, channel)
    if willPlay then
        clip.handle = handle or 1
        self:StopSound(clip)
    end
    return willPlay and true or false
end

--- Starts the clip on the channel and records the handle on it, which is the only way to
--- stop it again. Returns whether the client accepted the file.
---@param clip { path: string, handle: number?, channel: string?, isPlaying: boolean? }
---@param channel string
---@return boolean willPlay
---@return number|nil handle
function SoundUtils:PlaySound(clip, channel)
    channel = channel or "Master"
    if not StopSound and PlayMusic then
        -- En WotLK 3.3.5a (Build 12340), PlaySoundFile usa el grupo SCRIPTSOUND que desvincula el
        -- handle y solo puede detenerse con Sound_GameSystem_RestartSoundSystem() (que ejecuta un
        -- OsSleep(200) en C++ provocando un tiron de ~350ms). PlayMusic usa la misma funcion C++
        -- (0x4c9110) sobre el grupo SCRIPTMUSIC conservando el handle global y permitiendo detenerlo
        -- con StopMusic() en 0.00ms sin reiniciar FMOD ni congelar el cliente.
        if self._restoreMusicTimer then
            Addon:CancelTimer(self._restoreMusicTimer)
            self._restoreMusicTimer = nil
        end
        if not self._musicSaved then
            self._origEnableMusic = GetCVar("Sound_EnableMusic") or "1"
            self._origMusicVolume = tonumber(GetCVar("Sound_MusicVolume")) or 0.5
            self._musicSaved = true
        end
        if tonumber(GetCVar("Sound_EnableMusic")) ~= 1 then
            SetCVar("Sound_EnableMusic", 1)
        end
        local targetVol = 1
        if channel ~= "Master" then
            targetVol = tonumber(GetCVar("Sound_SFXVolume")) or 0.8
        end
        SetCVar("Sound_MusicVolume", targetVol)
        PlayMusic(clip.path)
        clip.handle = 1
        clip.channel = channel
        clip.isPlaying = true
        return true, 1
    end
    local willPlay, handle = PlaySoundFile(clip.path, channel)
    clip.handle = handle or (willPlay and 1 or nil)
    clip.channel = channel
    clip.isPlaying = willPlay and true or false
    return willPlay, clip.handle
end

function SoundUtils:RestoreMusicImmediate()
    if self._restoreMusicTimer then
        Addon:CancelTimer(self._restoreMusicTimer)
        self._restoreMusicTimer = nil
    end
    if self._musicSaved then
        if StopMusic then pcall(StopMusic) end
        if self._origMusicVolume ~= nil then
            SetCVar("Sound_MusicVolume", self._origMusicVolume)
        end
        if self._origEnableMusic ~= nil then
            SetCVar("Sound_EnableMusic", self._origEnableMusic)
        end
        self._musicSaved = nil
        self._origMusicVolume = nil
        self._origEnableMusic = nil
    end
end

--- The game's own quest-log-close sound, played between two items in the queue.
---@param channel string
function SoundUtils:PlayCue(channel)
    local cueSound = (SOUNDKIT and SOUNDKIT.IG_QUEST_LOG_CLOSE) or "igQuestLogClose"
    pcall(PlaySound, cueSound, channel)
end

---@param clip { handle: number?, channel: string?, isPlaying: boolean? }
--- `fadeMs`, where given, fades the voice out over that many milliseconds rather than cutting it.
function SoundUtils:StopSound(clip, fadeMs)
    if not clip then return end
    -- Si el cliente es moderno y cuenta con StopSound por handle
    if type(clip.handle) == "number" and clip.handle > 1 and StopSound then
        pcall(StopSound, clip.handle, fadeMs)
    elseif clip.isPlaying or clip.handle then
        if not StopSound and StopMusic then
            -- Si fadeMs == 0 (fin natural del clip), silenciamos SCRIPTMUSIC al instante antes de
            -- StopMusic() para evitar que el loop reproduzca el inicio del MP3 durante el fade de 0.5s.
            -- Si fadeMs > 0 (pausa por combate o boton Stop), StopMusic() aplica su fade nativo de 0.5s en C++
            -- con 0.00ms de bloqueo en el hilo principal.
            if fadeMs == 0 then
                SetCVar("Sound_MusicVolume", 0)
            end
            pcall(StopMusic)
            if self._restoreMusicTimer then
                Addon:CancelTimer(self._restoreMusicTimer)
            end
            self._restoreMusicTimer = Addon:ScheduleTimer(function()
                self._restoreMusicTimer = nil
                if self._musicSaved and not (SoundQueue and SoundQueue:IsPlaying()) then
                    if self._origMusicVolume ~= nil then
                        SetCVar("Sound_MusicVolume", self._origMusicVolume)
                    end
                    if self._origEnableMusic ~= nil then
                        SetCVar("Sound_EnableMusic", self._origEnableMusic)
                    end
                    self._musicSaved = nil
                    self._origMusicVolume = nil
                    self._origEnableMusic = nil
                end
            end, 0.55)
        elseif Sound_GameSystem_RestartSoundSystem then
            pcall(Sound_GameSystem_RestartSoundSystem)
        end
    end
    clip.handle = nil
    clip.isPlaying = nil
end
