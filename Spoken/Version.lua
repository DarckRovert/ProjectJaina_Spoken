setfenv(1, SpokenEnv)
Version = {}

local CLIENT_VERSION, _, _, INTERFACE_VERSION = GetBuildInfo()

Version.Client                  = CLIENT_VERSION
Version.Interface               = INTERFACE_VERSION

-- Resolucion de variante de cliente para TuWoW (WoW 3.3.5a / Interface 30300)
local function Resolve(interface)
    if interface >= 30000 and interface < 40000 then
        return "tuwow"
    elseif interface >= 16000 and interface < 20000 then
        return "forever"
    elseif interface >= 20000 and interface < 30000 then
        return "anniversary"
    end
    local season = C_Seasons and C_Seasons.GetActiveSeason and C_Seasons.GetActiveSeason()
    if season and Enum and Enum.SeasonID and season == Enum.SeasonID.SeasonOfDiscovery then
        return "sod"
    end
    return "era"
end

Version.Variant                 = Resolve(INTERFACE_VERSION)
Version.IsTuWoW                 = (Version.Variant == "tuwow") or (INTERFACE_VERSION >= 30000 and INTERFACE_VERSION < 40000)
Version.HasForeverUI            = (rawget(_G, "ForeverUI") ~= nil)
Version.Is335                   = (INTERFACE_VERSION >= 30000 and INTERFACE_VERSION < 40000)
