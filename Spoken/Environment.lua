--[[
Two globals, and only two.

    Spoken     the public API. What a feature addon calls. Frozen by API_VERSION.
    SpokenEnv  the private environment every implementation file runs in.

SpokenEnv is a table whose metatable falls back to _G, so inside it every bare global
resolves against the game as usual, while anything an implementation file assigns to a
bare name lands here and nowhere else. That is what keeps SoundQueue, Sources and the
rest out of the game-wide namespace, and it is what lets Compat.lua fill in an API one
client lacks by writing into this table, leaving the real _G untouched.

Every implementation file starts with `setfenv(1, SpokenEnv)`, and this file must load
before all of them. The API is kept out of the environment, so that what a caller can
reach is a deliberate surface rather than the player's entire internals.
]]

local _G = getfenv(0)

local orig_format = string.format
local function safe_format(fmtStr, ...)
    local n = select("#", ...)
    if n == 0 then return orig_format(fmtStr) end
    local args = { ... }
    for i = 1, n do
        if args[i] == nil then
            args[i] = "nil"
        end
    end
    return orig_format(fmtStr, unpack(args, 1, n))
end

local orig_SetCVar = _G.SetCVar
local function safe_SetCVar(cvar, value, ...)
    if not orig_SetCVar then return false end
    local ok, res = pcall(orig_SetCVar, cvar, value, ...)
    if not ok then return false end
    return res
end

local orig_xpcall = _G.xpcall
local function safe_xpcall(func, errHandler, ...)
    if select("#", ...) == 0 then
        return orig_xpcall(func, errHandler)
    else
        local args = { ... }
        local n = select("#", ...)
        return orig_xpcall(function() return func(unpack(args, 1, n)) end, errHandler)
    end
end

SpokenEnv = setmetatable({
    _G = _G,
    AddonFolder = "Spoken",
    -- A literal because this file loads before any metadata API exists;
    -- scripts/quests/package.sh refuses to build when it disagrees with the .toc.
    AddonVersion = "3.8.3",
    format = safe_format,
    SetCVar = safe_SetCVar,
    xpcall = safe_xpcall,
}, { __index = _G })

-- Created here, filled by API.lua. Reusing an existing table keeps a feature addon's
-- early reference valid if the player is ever reloaded in place.
Spoken = rawget(_G, "Spoken") or {}
SpokenEnv.Spoken = Spoken

-- Inside instances and in combat the Forever client hands addons some values as secrets: a chat
-- line, an NPC's name or GUID (#357). Indexing, matching, comparing or joining one raises an
-- error, so every value read from the game goes through this, and a secret reads as nil: the
-- caller skips it as it skips a missing value. Clients without secrets have no issecretvalue.
function Spoken.NotSecret(value)
    local IsSecret = rawget(_G, "issecretvalue")
    if IsSecret and IsSecret(value) then
        return nil
    end
    return value
end
SpokenEnv.NotSecret = Spoken.NotSecret

-- The creature id in a unit's GUID ("Creature-0-1-2-3-<id>-..." or 3.3.5a hex GUID "0xF130..."),
-- or nil for a player, an object, or a secret one. A vehicle is a creature the player can ride.
function Spoken.CreatureID(guid)
    guid = Spoken.NotSecret(guid)
    if type(guid) ~= "string" or guid == "" then
        return nil
    end
    -- Modern GUID format
    local _, _, kind, id = string.find(guid, "^(%a+)%-%d+%-%d+%-%d+%-%d+%-(%d+)")
    if id and (kind == "Creature" or kind == "Vehicle") then
        return tonumber(id)
    end
    -- WotLK 3.3.5a hex GUID format (0xF130XXXXXXXXXXXX / 0xF150...)
    if guid:sub(1, 2) == "0x" and #guid >= 16 then
        local rawType = tonumber(guid:sub(5, 5), 16)
        if rawType then
            local t = rawType % 8
            if t == 3 or t == 5 then -- Creature or Vehicle
                local npcId = tonumber(guid:sub(6, 12), 16)
                if npcId and npcId > 0 then
                    return npcId
                end
            end
        end
    end
    return nil
end
