if not VoiceOver or not VoiceOver.DataModules then return end

SpokenQuestsAudio_esES = {}

function SpokenQuestsAudio_esES:GetSoundPath(fileName, event)
    setfenv(1, VoiceOver)
    if Enums.SoundEvent:IsQuestEvent(event) then
        return format([[generated\sounds\quests\%s.ogg]], fileName)
    elseif Enums.SoundEvent:IsGossipEvent(event) then
        return format([[generated\sounds\gossip\%s.ogg]], fileName)
    elseif Enums.SoundEvent.QuestFollowup and event == Enums.SoundEvent.QuestFollowup then
        return format([[generated\sounds\followup\%s.ogg]], fileName)
    end
end

VoiceOver.DataModules:Register("SpokenQuestsAudio_esES", SpokenQuestsAudio_esES)
SpokenQuestsAudio_esES.LookupLocale = "enUS"
