-- SpokenPlaces -- narrated lore playback.
--
-- This file knows what a lore entry sounds like -- which pack narrates it, where
-- the file is, how long it runs -- and hands that to the Spoken player, which owns
-- the queue, the frame and playback itself. This addon is one *source* on that
-- player: its clips wait their turn behind whatever another Spoken addon queued,
-- and Stop here stops lore, not a quest line that happens to be speaking.
--
-- Audio ships in separate sound-pack addons, all of them optional: without one
-- there is nothing to play, so the Play button does not appear and autoplay stays
-- quiet.
--
-- More than one pack can be installed at a time -- one per language, plus the
-- retired 64 kbps English pack for anyone who kept it. Each registers itself into
-- SpokenPlacesAudioPacks (and, while packs built for the old names are still in
-- circulation, SpokenZonesAudioPacks or ZoneLoreAudioPacks) under its own folder name;
-- this file picks which one to play from.
--
-- Every pack has the same structure and the same keys, so any installed pack is
-- playable regardless of the language being read: a player reading German with
-- only the English pack installed hears English narration rather than nothing.
-- When several packs are installed the player picks one; unpicked,
-- the language being read wins, then the client's own locale.

local ADDON_NAME, SpokenPlaces = ...

local L = SpokenPlaces.L

-- THERE IS NO STAND-IN CLIP. A line with no audio in the installed pack plays
-- nothing and says why.
--
-- There used to be one: Sounds/placeholder.mp3, a quest line borrowed from
-- ../wow-voiceover so the playback controls could be exercised before any real
-- narration existed. It was returned for every entry the pack did not cover, which
-- on a client with no pack installed is every entry there is -- so players heard a
-- stranger's quest audio about the League of Arathor over Elwynn Forest, Dun Morogh,
-- Felwood and Red Cloud Mesa, and reported it as the lore being wrong. They were
-- right: substituting unrelated audio is worse than silence, because silence is
-- honest about what is missing and this was not.

-- The pack table shape this version knows how to read. A pack declaring anything
-- else is ignored with a warning: refusing to read it is recoverable, guessing at
-- an unknown layout plays silence and reports nothing.
local PACK_FORMAT = 1

-- Playback state lives in the Spoken player. The clip being spoken is the head of
-- its queue, so there is one place to ask what is happening rather than a `current`,
-- a `paused` shadow copy and a staleness token that have to agree with each other.
--
-- What has not changed is that the client can start and stop a sound file and
-- nothing in between -- there is no seek, and no way to ask how far into a clip
-- playback has reached. So "pause" is stop, and "resume" replays from the
-- beginning. The player's tooltip says so rather than letting anyone discover it.

-- Callbacks fired whenever playback starts or stops, so every button showing the
-- same entry agrees on its glyph without polling. Bridged from the player's own
-- AUDIO_CHANGED in SetupAudio, so a change caused by another addon's clip -- ours
-- finishing because theirs started -- reaches these listeners too.
SpokenPlaces.audioChangedCallbacks = {}

function SpokenPlaces:OnAudioChanged(fn)
	table.insert(self.audioChangedCallbacks, fn)
end

-- Public because toggling the feature off has to refresh every button too, not
-- just the transitions that start and stop a clip.
function SpokenPlaces:NotifyAudioChanged()
	local list = self.audioChangedCallbacks
	for i = 1, #list do
		local ok, err = pcall(list[i])
		if not ok then
			SpokenPlaces:Print("|cffff5555error|r: %s", tostring(err))
		end
	end
end

--------------------------------------------------------------------------------
-- The player
--------------------------------------------------------------------------------

local BOOK = [[Interface\AddOns\Spoken\Textures\Book]]
local warnedNoPlayer = false

--- The zone's icon, or its zone's for a subzone; the book without an icon.
function SpokenPlaces:Portrait(mapID)
	local icon, crop
	if Spoken and Spoken.ZoneIcon then icon, crop = Spoken:ZoneIcon(mapID) end
	if icon then return { kind = "texture", texture = icon, texCoord = crop } end
	return { kind = "texture", texture = BOOK }
end

-- The Spoken source this addon speaks through, or nil when the player addon is not
-- installed. Said once, on the first thing that would have made a sound: a missing
-- dependency that stays silent is the bug report nobody can reproduce.
local function Source()
	if SpokenPlaces.source then
		return SpokenPlaces.source
	end
	if not warnedNoPlayer then
		warnedNoPlayer = true
		SpokenPlaces:Print("|cffffcc00Spoken is not installed|r -- stories cannot be read aloud without it")
	end
	return nil
end

-- Registers with the player. Runs once the world is up, after the player itself has
-- loaded; everything here degrades to "no narration" when it has not.
function SpokenPlaces:SetupAudio()
	if self.source then
		return
	end
	local Spoken = _G.Spoken
	if not (Spoken and Spoken.IsCompatible and Spoken:IsCompatible(1)) then
		return
	end

	self.source = Spoken:RegisterSource("places", {
		title = L.OPT_PAGE_TITLE,
		addon = ADDON_NAME,
		order = 3,
		-- How many clips may wait behind the one speaking. Discoveries arrive in
		-- bursts when crossing a cluster of small subzones, and narration that has
		-- fallen minutes behind is describing somewhere the player already left.
		queueLimit = 3,
		-- Durations come from a generated lookup and are exact; upstream's larger gap
		-- absorbs durations that are not.
		interClipGap = 0.25,
		-- Printed after Spoken's own by its Show Diagnostics.
		diagnostics = function() SpokenPlaces:ShowDiagnostics() end,
		-- What Spoken's settings show on this part's card: which voice packs are installed.
		packs = function()
			local names = {}
			for _, pack in ipairs(SpokenPlaces:GetAudioPacks()) do
				table.insert(names, pack.addon or SpokenPlaces:GetAudioPackLabel(pack))
			end
			return names
		end,
	})

	-- Switchable from the player's settings, named there by this addon. The quests addon
	-- declares the same id, so one setting covers whichever is speaking.
	if Spoken.RegisterOptionalAction then
		Spoken:RegisterOptionalAction("report", L.REPORT_BUTTON)
	end

	Spoken:RegisterCallback("AUDIO_CHANGED", function()
		SpokenPlaces:NotifyAudioChanged()
	end)

	-- Switched off or on in Spoken's settings: the map panel follows, and so does the Compendium's
	-- Places tab.
	if Spoken.RegisterCallback then
		Spoken:RegisterCallback("PART_SWITCHED", function(key)
			if key ~= "places" then return end
			if SpokenPlaces.RefreshPanel then SpokenPlaces:RefreshPanel() end
			if SpokenCompendium and SpokenCompendium.Relayout then SpokenCompendium:Relayout() end
		end)
	end

	-- The Compendium is in Spoken's own part of the menu where Spoken has one.
	if not Spoken.ShowsCompendium then
		Spoken.Minimap:AddEntry("places", { id = "lore", text = L.MENU_LORE_WINDOW, order = 1,
			onClick = function() SpokenPlaces:ToggleLoreWindow() end })
	end
	Spoken.Minimap:AddEntry("places", { id = "settings", text = L.MENU_ZONE_SETTINGS, order = 2,
		onClick = function() SpokenPlaces:OpenOptions() end })
end

--------------------------------------------------------------------------------
-- Sound packs
--------------------------------------------------------------------------------

-- Embedded SpokenPlacesAudio_esMX registry so /reload works without restarting WoW.exe
do
	SpokenPlacesAudioPacks = SpokenPlacesAudioPacks or {}
	if not SpokenPlacesAudioPacks['SpokenPlacesAudio_esMX'] then
		local pack = {
	version = 1,
	zones = {
		[947] = { file = "947\\zone", len = 41.117 },
		[1411] = { file = "1411\\zone", len = 89.913 },
		[1412] = { file = "1412\\zone", len = 70.922 },
		[1413] = { file = "1413\\zone", len = 86.988 },
		[1414] = { file = "1414\\zone", len = 70.374 },
		[1415] = { file = "1415\\zone", len = 74.109 },
		[1416] = { file = "1416\\zone", len = 69.695 },
		[1417] = { file = "1417\\zone", len = 85.316 },
		[1418] = { file = "1418\\zone", len = 73.822 },
		[1419] = { file = "1419\\zone", len = 89.339 },
		[1420] = { file = "1420\\zone", len = 71.445 },
		[1421] = { file = "1421\\zone", len = 162.377 },
		[1422] = { file = "1422\\zone", len = 81.633 },
		[1423] = { file = "1423\\zone", len = 77.401 },
		[1424] = { file = "1424\\zone", len = 79.569 },
		[1425] = { file = "1425\\zone", len = 82.129 },
		[1426] = { file = "1426\\zone", len = 78.916 },
		[1427] = { file = "1427\\zone", len = 79.203 },
		[1428] = { file = "1428\\zone", len = 83.357 },
		[1429] = { file = "1429\\zone", len = 91.272 },
		[1430] = { file = "1430\\zone", len = 44.617 },
		[1431] = { file = "1431\\zone", len = 83.148 },
		[1432] = { file = "1432\\zone", len = 61.231 },
		[1433] = { file = "1433\\zone", len = 89.757 },
		[1434] = { file = "1434\\zone", len = 84.924 },
		[1435] = { file = "1435\\zone", len = 70.661 },
		[1436] = { file = "1436\\zone", len = 83.879 },
		[1437] = { file = "1437\\zone", len = 84.428 },
		[1438] = { file = "1438\\zone", len = 73.247 },
		[1439] = { file = "1439\\zone", len = 68.65 },
		[1440] = { file = "1440\\zone", len = 93.048 },
		[1441] = { file = "1441\\zone", len = 70.635 },
		[1442] = { file = "1442\\zone", len = 94.615 },
		[1443] = { file = "1443\\zone", len = 61.544 },
		[1444] = { file = "1444\\zone", len = 54.57 },
		[1445] = { file = "1445\\zone", len = 86.648 },
		[1446] = { file = "1446\\zone", len = 76.095 },
		[1447] = { file = "1447\\zone", len = 55.275 },
		[1448] = { file = "1448\\zone", len = 73.926 },
		[1449] = { file = "1449\\zone", len = 68.389 },
		[1450] = { file = "1450\\zone", len = 80.98 },
		[1451] = { file = "1451\\zone", len = 77.218 },
		[1452] = { file = "1452\\zone", len = 67.709 },
		[1453] = { file = "1453\\zone", len = 73.953 },
		[1454] = { file = "1454\\zone", len = 93.571 },
		[1455] = { file = "1455\\zone", len = 78.028 },
		[1456] = { file = "1456\\zone", len = 74.945 },
		[1457] = { file = "1457\\zone", len = 83.801 },
		[1458] = { file = "1458\\zone", len = 82.495 },
	},
	subzones = {
		[1411] = {
			["bladefist bay"] = { file = "1411\\bladefist-bay", len = 35.291 },
			["burning blade coven"] = { file = "1411\\burning-blade-coven", len = 47.412 },
			["darkspear strand"] = { file = "1411\\darkspear-strand", len = 13.009 },
			["deadeye shore"] = { file = "1411\\deadeye-shore", len = 30.485 },
			["den"] = { file = "1411\\den", len = 15.909 },
			["drygulch ravine"] = { file = "1411\\drygulch-ravine", len = 32.392 },
			["dustwind cave"] = { file = "1411\\dustwind-cave", len = 21.864 },
			["echo isles"] = { file = "1411\\echo-isles", len = 80.222 },
			["hidden path"] = { file = "1411\\hidden-path", len = 29.675 },
			["jaggedswine farm"] = { file = "1411\\jaggedswine-farm", len = 10.841 },
			["kolkar crag"] = { file = "1411\\kolkar-crag", len = 25.313 },
			["razor hill"] = { file = "1411\\razor-hill", len = 60.264 },
			["razor hill barracks"] = { file = "1411\\razor-hill-barracks", len = 11.807 },
			["razormane grounds"] = { file = "1411\\razormane-grounds", len = 34.142 },
			["razorwind canyon"] = { file = "1411\\razorwind-canyon", len = 39.811 },
			["rocktusk farm"] = { file = "1411\\rocktusk-farm", len = 12.513 },
			["scuttle coast"] = { file = "1411\\scuttle-coast", len = 39.471 },
			["senjin village"] = { file = "1411\\senjin-village", len = 37.825 },
			["shrine of the dormant flame"] = { file = "1411\\shrine-of-the-dormant-flame", len = 43.729 },
			["skull rock"] = { file = "1411\\skull-rock", len = 11.494 },
			["southfury river"] = { file = "1411\\southfury-river", len = 51.017 },
			["spirit rock"] = { file = "1411\\spirit-rock", len = 16.771 },
			["thunder ridge"] = { file = "1411\\thunder-ridge", len = 74.997 },
			["tiragarde keep"] = { file = "1411\\tiragarde-keep", len = 78.367 },
			["torkren farm"] = { file = "1411\\torkren-farm", len = 25.757 },
			["valley of trials"] = { file = "1411\\valley-of-trials", len = 72.516 },
		},
		[1412] = {
			["baeldun digsite"] = { file = "1412\\baeldun-digsite", len = 38.504 },
			["bloodhoof village"] = { file = "1412\\bloodhoof-village", len = 39.915 },
			["brambleblade ravine"] = { file = "1412\\brambleblade-ravine", len = 21.525 },
			["camp narache"] = { file = "1412\\camp-narache", len = 24.137 },
			["golden plains"] = { file = "1412\\golden-plains", len = 19.435 },
			["kodo rock"] = { file = "1412\\kodo-rock", len = 14.315 },
			["palemane rock"] = { file = "1412\\palemane-rock", len = 21.29 },
			["ravaged caravan"] = { file = "1412\\ravaged-caravan", len = 31.739 },
			["red cloud mesa"] = { file = "1412\\red-cloud-mesa", len = 34.246 },
			["red rocks"] = { file = "1412\\red-rocks", len = 63.713 },
			["rolling plains"] = { file = "1412\\rolling-plains", len = 30.171 },
			["stonebull lake"] = { file = "1412\\stonebull-lake", len = 22.465 },
			["thunderhorn water well"] = { file = "1412\\thunderhorn-water-well", len = 18.73 },
			["venture co mine"] = { file = "1412\\venture-co-mine", len = 80.64 },
			["wildmane water well"] = { file = "1412\\wildmane-water-well", len = 16.091 },
			["windfury ridge"] = { file = "1412\\windfury-ridge", len = 24.477 },
			["winterhoof water well"] = { file = "1412\\winterhoof-water-well", len = 23.092 },
		},
		[1413] = {
			["agamagor"] = { file = "1413\\agamagor", len = 21.211 },
			["bael modan"] = { file = "1413\\bael-modan", len = 69.407 },
			["baeldun keep"] = { file = "1413\\baeldun-keep", len = 14.132 },
			["blackthorn ridge"] = { file = "1413\\blackthorn-ridge", len = 14.655 },
			["boulder lode mine"] = { file = "1413\\boulder-lode-mine", len = 41.613 },
			["bramblescar"] = { file = "1413\\bramblescar", len = 17.946 },
			["camp taurajo"] = { file = "1413\\camp-taurajo", len = 13.636 },
			["crossroads"] = { file = "1413\\crossroads", len = 43.442 },
			["dreadmist den"] = { file = "1413\\dreadmist-den", len = 21.29 },
			["dreadmist peak"] = { file = "1413\\dreadmist-peak", len = 19.278 },
			["dry hills"] = { file = "1413\\dry-hills", len = 18.965 },
			["far watch post"] = { file = "1413\\far-watch-post", len = 26.749 },
			["field of giants"] = { file = "1413\\field-of-giants", len = 63.739 },
			["forgotten pools"] = { file = "1413\\forgotten-pools", len = 31.164 },
			["fray island"] = { file = "1413\\fray-island", len = 14.916 },
			["gold road"] = { file = "1413\\gold-road", len = 11.86 },
			["groldom farm"] = { file = "1413\\groldom-farm", len = 12.565 },
			["lushwater oasis"] = { file = "1413\\lushwater-oasis", len = 30.459 },
			["merchant coast"] = { file = "1413\\merchant-coast", len = 26.149 },
			["morshan base camp"] = { file = "1413\\morshan-base-camp", len = 20.062 },
			["morshan rampart"] = { file = "1413\\morshan-rampart", len = 20.611 },
			["raptor grounds"] = { file = "1413\\raptor-grounds", len = 26.384 },
			["ratchet"] = { file = "1413\\ratchet", len = 70.295 },
			["shrine of the fallen warrior"] = { file = "1413\\shrine-of-the-fallen-warrior", len = 21.029 },
			["sludge fen"] = { file = "1413\\sludge-fen", len = 67.657 },
			["southern gold road"] = { file = "1413\\southern-gold-road", len = 31.739 },
			["southfury river"] = { file = "1413\\southfury-river", len = 53.551 },
			["stagnant oasis"] = { file = "1413\\stagnant-oasis", len = 35.553 },
			["thorn hill"] = { file = "1413\\thorn-hill", len = 18.495 },
			["tidus stair"] = { file = "1413\\tidus-stair", len = 23.38 },
			["wailing caverns"] = { file = "1413\\wailing-caverns", len = 75.415 },
		},
		[1416] = {
			["dalaran"] = { file = "1416\\dalaran", len = 72.751 },
			["dandreds fold"] = { file = "1416\\dandreds-fold", len = 18.26 },
			["lordamere internment camp"] = { file = "1416\\lordamere-internment-camp", len = 59.402 },
			["ruins of alterac"] = { file = "1416\\ruins-of-alterac", len = 85.159 },
			["uplands"] = { file = "1416\\uplands", len = 35.109 },
		},
		[1417] = {
			["boulderfist hall"] = { file = "1417\\boulderfist-hall", len = 26.723 },
			["bouldergor"] = { file = "1417\\bouldergor", len = 21.577 },
			["circle of east binding"] = { file = "1417\\circle-of-east-binding", len = 19.069 },
			["circle of inner binding"] = { file = "1417\\circle-of-inner-binding", len = 20.14 },
			["circle of outer binding"] = { file = "1417\\circle-of-outer-binding", len = 13.244 },
			["circle of west binding"] = { file = "1417\\circle-of-west-binding", len = 15.386 },
			["dabyries farmstead"] = { file = "1417\\dabyries-farmstead", len = 16.274 },
			["drowned reef"] = { file = "1417\\drowned-reef", len = 32.679 },
			["drywhisker gorge"] = { file = "1417\\drywhisker-gorge", len = 36.911 },
			["faldirs cove"] = { file = "1417\\faldirs-cove", len = 72.437 },
			["goshek farm"] = { file = "1417\\goshek-farm", len = 56.973 },
			["hammerfall"] = { file = "1417\\hammerfall", len = 68.885 },
			["northfold manor"] = { file = "1417\\northfold-manor", len = 44.695 },
			["refuge pointe"] = { file = "1417\\refuge-pointe", len = 70.87 },
			["stromgarde keep"] = { file = "1417\\stromgarde-keep", len = 44.591 },
			["thandol span"] = { file = "1417\\thandol-span", len = 74.423 },
			["thoradins wall"] = { file = "1417\\thoradins-wall", len = 29.126 },
			["tower of arathor"] = { file = "1417\\tower-of-arathor", len = 70.348 },
			["witherbark village"] = { file = "1417\\witherbark-village", len = 49.868 },
		},
		[1418] = {
			["agmonds end"] = { file = "1418\\agmonds-end", len = 17.241 },
			["angor fortress"] = { file = "1418\\angor-fortress", len = 9.587 },
			["apocryphans rest"] = { file = "1418\\apocryphans-rest", len = 17.998 },
			["camp boff"] = { file = "1418\\camp-boff", len = 11.259 },
			["camp cagg"] = { file = "1418\\camp-cagg", len = 9.9 },
			["camp kosh"] = { file = "1418\\camp-kosh", len = 20.114 },
			["camp wurg"] = { file = "1418\\camp-wurg", len = 8.986 },
			["dustbelch grotto"] = { file = "1418\\dustbelch-grotto", len = 19.67 },
			["dustbowl"] = { file = "1418\\dustbowl", len = 23.275 },
			["dustwind gulch"] = { file = "1418\\dustwind-gulch", len = 17.345 },
			["hammertoes digsite"] = { file = "1418\\hammertoes-digsite", len = 19.618 },
			["kargath"] = { file = "1418\\kargath", len = 59.977 },
			["lethlor ravine"] = { file = "1418\\lethlor-ravine", len = 16.562 },
			["makers terrace"] = { file = "1418\\makers-terrace", len = 17.606 },
			["mirage flats"] = { file = "1418\\mirage-flats", len = 17.894 },
			["uldaman"] = { file = "1418\\uldaman", len = 47.438 },
			["valley of fangs"] = { file = "1418\\valley-of-fangs", len = 19.435 },
		},
		[1419] = {
			["dark portal"] = { file = "1419\\dark-portal", len = 82.207 },
			["dreadmaul post"] = { file = "1419\\dreadmaul-post", len = 12.983 },
			["garrison armory"] = { file = "1419\\garrison-armory", len = 20.323 },
			["nethergarde keep"] = { file = "1419\\nethergarde-keep", len = 84.14 },
			["rise of the defiler"] = { file = "1419\\rise-of-the-defiler", len = 13.662 },
			["serpents coil"] = { file = "1419\\serpents-coil", len = 34.22 },
			["tainted scar"] = { file = "1419\\tainted-scar", len = 70.504 },
		},
		[1420] = {
			["agamand family crypt"] = { file = "1420\\agamand-family-crypt", len = 24.66 },
			["agamand mills"] = { file = "1420\\agamand-mills", len = 57.548 },
			["balnir farmstead"] = { file = "1420\\balnir-farmstead", len = 50.416 },
			["brightwater lake"] = { file = "1420\\brightwater-lake", len = 9.352 },
			["brill"] = { file = "1420\\brill", len = 80.457 },
			["brill town hall"] = { file = "1420\\brill-town-hall", len = 19.931 },
			["bulwark"] = { file = "1420\\bulwark", len = 42.188 },
			["cold hearth manor"] = { file = "1420\\cold-hearth-manor", len = 29.962 },
			["crusader outpost"] = { file = "1420\\crusader-outpost", len = 22.465 },
			["deathknell"] = { file = "1420\\deathknell", len = 62.668 },
			["faols rest"] = { file = "1420\\faols-rest", len = 30.903 },
			["gallows end tavern"] = { file = "1420\\gallows-end-tavern", len = 18.312 },
			["garrens haunt"] = { file = "1420\\garrens-haunt", len = 47.595 },
			["gunthers retreat"] = { file = "1420\\gunthers-retreat", len = 18.834 },
			["night webs hollow"] = { file = "1420\\night-webs-hollow", len = 35.631 },
			["nightmare vale"] = { file = "1420\\nightmare-vale", len = 21.891 },
			["north coast"] = { file = "1420\\north-coast", len = 17.711 },
			["ruins of lordaeron"] = { file = "1420\\ruins-of-lordaeron", len = 80.144 },
			["scarlet monastery"] = { file = "1420\\scarlet-monastery", len = 33.071 },
			["scarlet watch post"] = { file = "1420\\scarlet-watch-post", len = 16.353 },
			["shadow grave"] = { file = "1420\\shadow-grave", len = 13.218 },
			["solliden farmstead"] = { file = "1420\\solliden-farmstead", len = 70.844 },
			["stillwater pond"] = { file = "1420\\stillwater-pond", len = 46.994 },
			["terrace of repose"] = { file = "1420\\terrace-of-repose", len = 24.059 },
			["venomweb vale"] = { file = "1420\\venomweb-vale", len = 26.175 },
			["whispering gardens"] = { file = "1420\\whispering-gardens", len = 21.891 },
			["whispering shore"] = { file = "1420\\whispering-shore", len = 22.23 },
		},
		[1421] = {
			["ambermill"] = { file = "1421\\ambermill", len = 52.846 },
			["berens peril"] = { file = "1421\\berens-peril", len = 32.81 },
			["dawning isles"] = { file = "1421\\dawning-isles", len = 27.141 },
			["dead field"] = { file = "1421\\dead-field", len = 47.36 },
			["decrepit ferry"] = { file = "1421\\decrepit-ferry", len = 30.824 },
			["deep elem mine"] = { file = "1421\\deep-elem-mine", len = 22.465 },
			["fenris isle"] = { file = "1421\\fenris-isle", len = 53.969 },
			["fenris keep"] = { file = "1421\\fenris-keep", len = 39.131 },
			["greymane wall"] = { file = "1421\\greymane-wall", len = 39.079 },
			["ivar patch"] = { file = "1421\\ivar-patch", len = 55.223 },
			["lordamere lake"] = { file = "1421\\lordamere-lake", len = 58.305 },
			["maldens orchard"] = { file = "1421\\maldens-orchard", len = 47.099 },
			["north tides hollow"] = { file = "1421\\north-tides-hollow", len = 23.327 },
			["north tides run"] = { file = "1421\\north-tides-run", len = 18.913 },
			["olsens farthing"] = { file = "1421\\olsens-farthing", len = 18.26 },
			["pyrewood village"] = { file = "1421\\pyrewood-village", len = 56.999 },
			["sepulcher"] = { file = "1421\\sepulcher", len = 50.077 },
			["shadowfang keep"] = { file = "1421\\shadowfang-keep", len = 72.229 },
			["shining strand"] = { file = "1421\\shining-strand", len = 33.515 },
			["skittering dark"] = { file = "1421\\skittering-dark", len = 37.355 },
			["south tides run"] = { file = "1421\\south-tides-run", len = 8.281 },
			["valgans field"] = { file = "1421\\valgans-field", len = 31.869 },
		},
		[1422] = {
			["bulwark"] = { file = "1422\\bulwark", len = 44.225 },
			["caer darrow"] = { file = "1422\\caer-darrow", len = 71.628 },
			["chillwind camp"] = { file = "1422\\chillwind-camp", len = 54.204 },
			["dalsons tears"] = { file = "1422\\dalsons-tears", len = 51.931 },
			["darrowmere lake"] = { file = "1422\\darrowmere-lake", len = 63.112 },
			["felstone field"] = { file = "1422\\felstone-field", len = 40.803 },
			["gahrrons withering"] = { file = "1422\\gahrrons-withering", len = 47.491 },
			["hearthglen"] = { file = "1422\\hearthglen", len = 50.73 },
			["mardenholde keep"] = { file = "1422\\mardenholde-keep", len = 72.072 },
			["northridge lumber camp"] = { file = "1422\\northridge-lumber-camp", len = 33.881 },
			["ruins of andorhal"] = { file = "1422\\ruins-of-andorhal", len = 36.389 },
			["scholomance"] = { file = "1422\\scholomance", len = 91.011 },
			["sorrow hill"] = { file = "1422\\sorrow-hill", len = 76.669 },
			["thondroril river"] = { file = "1422\\thondroril-river", len = 29.335 },
			["uthers tomb"] = { file = "1422\\uthers-tomb", len = 71.863 },
			["weeping cave"] = { file = "1422\\weeping-cave", len = 27.246 },
			["writhing haunt"] = { file = "1422\\writhing-haunt", len = 37.277 },
		},
		[1423] = {
			["blackwood lake"] = { file = "1423\\blackwood-lake", len = 29.048 },
			["browman mill"] = { file = "1423\\browman-mill", len = 28.682 },
			["corins crossing"] = { file = "1423\\corins-crossing", len = 34.638 },
			["crown guard tower"] = { file = "1423\\crown-guard-tower", len = 16.692 },
			["darrowshire"] = { file = "1423\\darrowshire", len = 46.08 },
			["eastwall gate"] = { file = "1423\\eastwall-gate", len = 10.971 },
			["eastwall tower"] = { file = "1423\\eastwall-tower", len = 16.222 },
			["fungal vale"] = { file = "1423\\fungal-vale", len = 24.895 },
			["infectis scar"] = { file = "1423\\infectis-scar", len = 30.38 },
			["lake mereldar"] = { file = "1423\\lake-mereldar", len = 19.095 },
			["lights hope chapel"] = { file = "1423\\lights-hope-chapel", len = 49.502 },
			["marris stead"] = { file = "1423\\marris-stead", len = 45.218 },
			["mazraalor"] = { file = "1423\\mazraalor", len = 16.353 },
			["northdale"] = { file = "1423\\northdale", len = 23.797 },
			["northpass tower"] = { file = "1423\\northpass-tower", len = 14.002 },
			["noxious glade"] = { file = "1423\\noxious-glade", len = 31.948 },
			["pestilent scar"] = { file = "1423\\pestilent-scar", len = 19.801 },
			["plaguewood"] = { file = "1423\\plaguewood", len = 71.079 },
			["quellithien lodge"] = { file = "1423\\quellithien-lodge", len = 21.603 },
			["scarlet base camp"] = { file = "1423\\scarlet-base-camp", len = 13.479 },
			["scarlet basilica"] = { file = "1423\\scarlet-basilica", len = 18.73 },
			["stratholme"] = { file = "1423\\stratholme", len = 70.557 },
			["terrordale"] = { file = "1423\\terrordale", len = 58.54 },
			["terrorweb tunnel"] = { file = "1423\\terrorweb-tunnel", len = 26.88 },
			["thondroril river"] = { file = "1423\\thondroril-river", len = 28.709 },
			["tyrs hand"] = { file = "1423\\tyrs-hand", len = 60.395 },
			["undercroft"] = { file = "1423\\undercroft", len = 19.122 },
			["zulmashar"] = { file = "1423\\zulmashar", len = 45.087 },
		},
		[1424] = {
			["azurelode mine"] = { file = "1424\\azurelode-mine", len = 21.603 },
			["chillwind point"] = { file = "1424\\chillwind-point", len = 23.144 },
			["corrahns dagger"] = { file = "1424\\corrahns-dagger", len = 6.949 },
			["crushridge hold"] = { file = "1424\\crushridge-hold", len = 19.069 },
			["darrow hill"] = { file = "1424\\darrow-hill", len = 17.58 },
			["dun garok"] = { file = "1424\\dun-garok", len = 21.577 },
			["durnholde keep"] = { file = "1424\\durnholde-keep", len = 84.532 },
			["eastern strand"] = { file = "1424\\eastern-strand", len = 17.842 },
			["gallows corner"] = { file = "1424\\gallows-corner", len = 20.375 },
			["gavins naze"] = { file = "1424\\gavins-naze", len = 13.662 },
			["growless cave"] = { file = "1424\\growless-cave", len = 23.641 },
			["headland"] = { file = "1424\\headland", len = 10.135 },
			["hillsbrad fields"] = { file = "1424\\hillsbrad-fields", len = 73.404 },
			["misty shore"] = { file = "1424\\misty-shore", len = 29.544 },
			["nethander stead"] = { file = "1424\\nethander-stead", len = 22.073 },
			["purgation isle"] = { file = "1424\\purgation-isle", len = 29.623 },
			["ravenholdt manor"] = { file = "1424\\ravenholdt-manor", len = 51.592 },
			["slaughter hollow"] = { file = "1424\\slaughter-hollow", len = 18.86 },
			["soferas naze"] = { file = "1424\\soferas-naze", len = 9.038 },
			["southpoint tower"] = { file = "1424\\southpoint-tower", len = 20.767 },
			["strahnbrad"] = { file = "1424\\strahnbrad", len = 80.274 },
			["tarren mill"] = { file = "1424\\tarren-mill", len = 70.687 },
			["thoradins wall"] = { file = "1424\\thoradins-wall", len = 27.559 },
			["western strand"] = { file = "1424\\western-strand", len = 15.334 },
		},
		[1425] = {
			["aerie peak"] = { file = "1425\\aerie-peak", len = 88.947 },
			["agolwatha"] = { file = "1425\\agolwatha", len = 21.42 },
			["altar of zul"] = { file = "1425\\altar-of-zul", len = 15.935 },
			["bogens ledge"] = { file = "1425\\bogens-ledge", len = 5.12 },
			["creeping ruin"] = { file = "1425\\creeping-ruin", len = 17.815 },
			["featherbeards hovel"] = { file = "1425\\featherbeards-hovel", len = 16.562 },
			["hiriwatha"] = { file = "1425\\hiriwatha", len = 11.729 },
			["jinthaalor"] = { file = "1425\\jinthaalor", len = 67.579 },
			["overlook cliffs"] = { file = "1425\\overlook-cliffs", len = 26.357 },
			["plaguemist ravine"] = { file = "1425\\plaguemist-ravine", len = 39.758 },
			["queldanil lodge"] = { file = "1425\\queldanil-lodge", len = 41.091 },
			["revantusk village"] = { file = "1425\\revantusk-village", len = 84.428 },
			["seradane"] = { file = "1425\\seradane", len = 37.825 },
			["shadraalor"] = { file = "1425\\shadraalor", len = 14.681 },
			["shaolwatha"] = { file = "1425\\shaolwatha", len = 8.333 },
			["shindiggers camp"] = { file = "1425\\shindiggers-camp", len = 14.263 },
			["skulk rock"] = { file = "1425\\skulk-rock", len = 18.547 },
			["valorwind lake"] = { file = "1425\\valorwind-lake", len = 18.312 },
			["wildhammer keep"] = { file = "1425\\wildhammer-keep", len = 12.643 },
			["zunwatha"] = { file = "1425\\zunwatha", len = 17.58 },
		},
		[1426] = {
			["amberstill ranch"] = { file = "1426\\amberstill-ranch", len = 33.881 },
			["anvilmar"] = { file = "1426\\anvilmar", len = 21.029 },
			["brewnall village"] = { file = "1426\\brewnall-village", len = 22.282 },
			["chill breeze valley"] = { file = "1426\\chill-breeze-valley", len = 42.606 },
			["coldridge pass"] = { file = "1426\\coldridge-pass", len = 47.909 },
			["coldridge valley"] = { file = "1426\\coldridge-valley", len = 33.228 },
			["frostmane hold"] = { file = "1426\\frostmane-hold", len = 22.387 },
			["gates of ironforge"] = { file = "1426\\gates-of-ironforge", len = 32.888 },
			["gnomeregan"] = { file = "1426\\gnomeregan", len = 79.177 },
			["golbolar quarry"] = { file = "1426\\golbolar-quarry", len = 34.246 },
			["grizzled den"] = { file = "1426\\grizzled-den", len = 29.335 },
			["helms bed lake"] = { file = "1426\\helms-bed-lake", len = 36.049 },
			["iceflow lake"] = { file = "1426\\iceflow-lake", len = 30.171 },
			["ironbands compound"] = { file = "1426\\ironbands-compound", len = 15.569 },
			["kharanos"] = { file = "1426\\kharanos", len = 65.567 },
			["misty pine refuge"] = { file = "1426\\misty-pine-refuge", len = 7.784 },
			["north gate outpost"] = { file = "1426\\north-gate-outpost", len = 33.149 },
			["north gate pass"] = { file = "1426\\north-gate-pass", len = 20.375 },
			["shimmer ridge"] = { file = "1426\\shimmer-ridge", len = 13.427 },
			["south gate outpost"] = { file = "1426\\south-gate-outpost", len = 25.313 },
			["south gate pass"] = { file = "1426\\south-gate-pass", len = 21.734 },
			["steelgrills depot"] = { file = "1426\\steelgrills-depot", len = 9.587 },
			["thunderbrew distillery"] = { file = "1426\\thunderbrew-distillery", len = 14.472 },
			["tundrid hills"] = { file = "1426\\tundrid-hills", len = 32.679 },
		},
		[1427] = {
			["blackchar cave"] = { file = "1427\\blackchar-cave", len = 8.934 },
			["blackrock mountain"] = { file = "1427\\blackrock-mountain", len = 54.909 },
			["cauldron"] = { file = "1427\\cauldron", len = 39.967 },
			["dustfire valley"] = { file = "1427\\dustfire-valley", len = 12.826 },
			["firewatch ridge"] = { file = "1427\\firewatch-ridge", len = 17.345 },
			["grimesilt dig site"] = { file = "1427\\grimesilt-dig-site", len = 10.736 },
			["sea of cinders"] = { file = "1427\\sea-of-cinders", len = 24.006 },
			["slag pit"] = { file = "1427\\slag-pit", len = 32.209 },
			["stonewrought pass"] = { file = "1427\\stonewrought-pass", len = 30.877 },
			["tanner camp"] = { file = "1427\\tanner-camp", len = 15.255 },
			["thorium point"] = { file = "1427\\thorium-point", len = 27.324 },
		},
		[1428] = {
			["blackrock mountain"] = { file = "1428\\blackrock-mountain", len = 55.98 },
			["blackrock pass"] = { file = "1428\\blackrock-pass", len = 34.821 },
			["blackrock stronghold"] = { file = "1428\\blackrock-stronghold", len = 32.496 },
			["dracodar"] = { file = "1428\\dracodar", len = 15.073 },
			["dreadmaul rock"] = { file = "1428\\dreadmaul-rock", len = 21.786 },
			["flame crest"] = { file = "1428\\flame-crest", len = 13.636 },
			["morgans vigil"] = { file = "1428\\morgans-vigil", len = 21.943 },
			["pillar of ash"] = { file = "1428\\pillar-of-ash", len = 17.189 },
			["ruins of thaurissan"] = { file = "1428\\ruins-of-thaurissan", len = 72.855 },
			["slither rock"] = { file = "1428\\slither-rock", len = 18.73 },
			["terror wing path"] = { file = "1428\\terror-wing-path", len = 11.389 },
		},
		[1429] = {
			["brackwell pumpkin patch"] = { file = "1429\\brackwell-pumpkin-patch", len = 29.989 },
			["crystal lake"] = { file = "1429\\crystal-lake", len = 12.983 },
			["eastvale logging camp"] = { file = "1429\\eastvale-logging-camp", len = 62.929 },
			["echo ridge mine"] = { file = "1429\\echo-ridge-mine", len = 18.495 },
			["fargodeep mine"] = { file = "1429\\fargodeep-mine", len = 44.931 },
			["forests edge"] = { file = "1429\\forests-edge", len = 29.179 },
			["goldshire"] = { file = "1429\\goldshire", len = 77.27 },
			["heroes vigil"] = { file = "1429\\heroes-vigil", len = 23.536 },
			["jasperlode mine"] = { file = "1429\\jasperlode-mine", len = 44.382 },
			["jerods landing"] = { file = "1429\\jerods-landing", len = 20.01 },
			["maclure vineyards"] = { file = "1429\\maclure-vineyards", len = 33.463 },
			["mirror lake"] = { file = "1429\\mirror-lake", len = 24.059 },
			["mirror lake orchard"] = { file = "1429\\mirror-lake-orchard", len = 24.294 },
			["northshire abbey"] = { file = "1429\\northshire-abbey", len = 87.066 },
			["northshire valley"] = { file = "1429\\northshire-valley", len = 60.395 },
			["northshire vineyards"] = { file = "1429\\northshire-vineyards", len = 20.898 },
			["ridgepoint tower"] = { file = "1429\\ridgepoint-tower", len = 24.79 },
			["stone cairn lake"] = { file = "1429\\stone-cairn-lake", len = 37.486 },
			["stonefield farm"] = { file = "1429\\stonefield-farm", len = 23.902 },
			["thunder falls"] = { file = "1429\\thunder-falls", len = 52.611 },
			["tower of azora"] = { file = "1429\\tower-of-azora", len = 50.103 },
			["westbrook garrison"] = { file = "1429\\westbrook-garrison", len = 54.883 },
		},
		[1430] = {
			["aridens camp"] = { file = "1430\\aridens-camp", len = 29.022 },
			["deadmans crossing"] = { file = "1430\\deadmans-crossing", len = 33.515 },
			["deadwind ravine"] = { file = "1430\\deadwind-ravine", len = 16.692 },
			["groshgok compound"] = { file = "1430\\groshgok-compound", len = 16.927 },
			["karazhan"] = { file = "1430\\karazhan", len = 61.414 },
			["masters cellar"] = { file = "1430\\masters-cellar", len = 69.277 },
			["morgans plot"] = { file = "1430\\morgans-plot", len = 23.745 },
			["sleeping gorge"] = { file = "1430\\sleeping-gorge", len = 12.591 },
			["vice"] = { file = "1430\\vice", len = 27.298 },
		},
		[1431] = {
			["addles stead"] = { file = "1431\\addles-stead", len = 35.735 },
			["beggars haunt"] = { file = "1431\\beggars-haunt", len = 40.62 },
			["brightwood grove"] = { file = "1431\\brightwood-grove", len = 21.864 },
			["darkened bank"] = { file = "1431\\darkened-bank", len = 24.242 },
			["darkshire"] = { file = "1431\\darkshire", len = 66.847 },
			["dawning wood catacombs"] = { file = "1431\\dawning-wood-catacombs", len = 27.298 },
			["forlorn rowe"] = { file = "1431\\forlorn-rowe", len = 23.38 },
			["hushed bank"] = { file = "1431\\hushed-bank", len = 30.015 },
			["manor mistmantle"] = { file = "1431\\manor-mistmantle", len = 30.955 },
			["raven hill"] = { file = "1431\\raven-hill", len = 24.764 },
			["raven hill cemetery"] = { file = "1431\\raven-hill-cemetery", len = 63.66 },
			["rolands doom"] = { file = "1431\\rolands-doom", len = 31.713 },
			["rotting orchard"] = { file = "1431\\rotting-orchard", len = 30.537 },
			["tranquil gardens cemetery"] = { file = "1431\\tranquil-gardens-cemetery", len = 31.373 },
			["twilight grove"] = { file = "1431\\twilight-grove", len = 51.722 },
			["vulgol ogre mound"] = { file = "1431\\vulgol-ogre-mound", len = 71.131 },
			["yorgen farmstead"] = { file = "1431\\yorgen-farmstead", len = 24.79 },
		},
		[1432] = {
			["algaz station"] = { file = "1432\\algaz-station", len = 17.842 },
			["dun algaz"] = { file = "1432\\dun-algaz", len = 65.672 },
			["farstrider lodge"] = { file = "1432\\farstrider-lodge", len = 23.066 },
			["grizzlepaw ridge"] = { file = "1432\\grizzlepaw-ridge", len = 24.189 },
			["ironbands excavation site"] = { file = "1432\\ironbands-excavation-site", len = 26.619 },
			["loch"] = { file = "1432\\loch", len = 12.225 },
			["mogrosh stronghold"] = { file = "1432\\mogrosh-stronghold", len = 14.054 },
			["north gate pass"] = { file = "1432\\north-gate-pass", len = 20.297 },
			["silver stream mine"] = { file = "1432\\silver-stream-mine", len = 36.545 },
			["south gate pass"] = { file = "1432\\south-gate-pass", len = 21.081 },
			["stonesplinter valley"] = { file = "1432\\stonesplinter-valley", len = 23.38 },
			["stonewrought dam"] = { file = "1432\\stonewrought-dam", len = 46.707 },
			["stoutlager inn"] = { file = "1432\\stoutlager-inn", len = 15.909 },
			["thelsamar"] = { file = "1432\\thelsamar", len = 21.551 },
			["valley of kings"] = { file = "1432\\valley-of-kings", len = 63.477 },
		},
		[1433] = {
			["althers mill"] = { file = "1433\\althers-mill", len = 15.804 },
			["galardell valley"] = { file = "1433\\galardell-valley", len = 24.137 },
			["lake everstill"] = { file = "1433\\lake-everstill", len = 48.718 },
			["lakeridge highway"] = { file = "1433\\lakeridge-highway", len = 22.361 },
			["lakeshire"] = { file = "1433\\lakeshire", len = 45.766 },
			["redridge canyons"] = { file = "1433\\redridge-canyons", len = 9.456 },
			["renders camp"] = { file = "1433\\renders-camp", len = 16.509 },
			["renders rock"] = { file = "1433\\renders-rock", len = 17.842 },
			["renders valley"] = { file = "1433\\renders-valley", len = 12.042 },
			["rethban caverns"] = { file = "1433\\rethban-caverns", len = 20.297 },
			["stonewatch"] = { file = "1433\\stonewatch", len = 64.261 },
			["stonewatch falls"] = { file = "1433\\stonewatch-falls", len = 18.965 },
			["stonewatch keep"] = { file = "1433\\stonewatch-keep", len = 79.726 },
			["stonewatch tower"] = { file = "1433\\stonewatch-tower", len = 23.353 },
			["three corners"] = { file = "1433\\three-corners", len = 23.641 },
			["tower of ilgalar"] = { file = "1433\\tower-of-ilgalar", len = 16.64 },
		},
		[1434] = {
			["baliamah ruins"] = { file = "1434\\baliamah-ruins", len = 12.878 },
			["ballal ruins"] = { file = "1434\\ballal-ruins", len = 20.48 },
			["bloodsail compound"] = { file = "1434\\bloodsail-compound", len = 20.402 },
			["booty bay"] = { file = "1434\\booty-bay", len = 71.027 },
			["cape of stranglethorn"] = { file = "1434\\cape-of-stranglethorn", len = 62.877 },
			["crystal shore"] = { file = "1434\\crystal-shore", len = 29.492 },
			["crystalvein mine"] = { file = "1434\\crystalvein-mine", len = 31.451 },
			["gromgol base camp"] = { file = "1434\\gromgol-base-camp", len = 26.671 },
			["gurubashi arena"] = { file = "1434\\gurubashi-arena", len = 42.762 },
			["jaguero isle"] = { file = "1434\\jaguero-isle", len = 28.552 },
			["janeiros point"] = { file = "1434\\janeiros-point", len = 20.976 },
			["kalai ruins"] = { file = "1434\\kalai-ruins", len = 17.11 },
			["kurzens compound"] = { file = "1434\\kurzens-compound", len = 54.465 },
			["lake nazferiti"] = { file = "1434\\lake-nazferiti", len = 23.536 },
			["mistvale valley"] = { file = "1434\\mistvale-valley", len = 19.67 },
			["mizjah ruins"] = { file = "1434\\mizjah-ruins", len = 22.7 },
			["moshogg ogre mound"] = { file = "1434\\moshogg-ogre-mound", len = 22.047 },
			["nekmani wellspring"] = { file = "1434\\nekmani-wellspring", len = 16.562 },
			["nesingwarys expedition"] = { file = "1434\\nesingwarys-expedition", len = 21.055 },
			["rebel camp"] = { file = "1434\\rebel-camp", len = 56.451 },
			["ruins of aboraz"] = { file = "1434\\ruins-of-aboraz", len = 18.73 },
			["ruins of jubuwal"] = { file = "1434\\ruins-of-jubuwal", len = 25.104 },
			["ruins of zulkunda"] = { file = "1434\\ruins-of-zulkunda", len = 19.017 },
			["ruins of zulmamwe"] = { file = "1434\\ruins-of-zulmamwe", len = 18.129 },
			["savage coast"] = { file = "1434\\savage-coast", len = 24.738 },
			["south seas"] = { file = "1434\\south-seas", len = 35.474 },
			["southern savage coast"] = { file = "1434\\southern-savage-coast", len = 31.007 },
			["spirit den"] = { file = "1434\\spirit-den", len = 15.569 },
			["stockpile"] = { file = "1434\\stockpile", len = 5.59 },
			["tkashi ruins"] = { file = "1434\\tkashi-ruins", len = 18.834 },
			["venture co base camp"] = { file = "1434\\venture-co-base-camp", len = 12.173 },
			["venture co operations center"] = { file = "1434\\venture-co-operations-center", len = 20.323 },
			["vile reef"] = { file = "1434\\vile-reef", len = 34.638 },
			["wild shore"] = { file = "1434\\wild-shore", len = 41.456 },
			["yojamba isle"] = { file = "1434\\yojamba-isle", len = 37.877 },
			["ziatajai ruins"] = { file = "1434\\ziatajai-ruins", len = 11.86 },
			["zulgurub"] = { file = "1434\\zulgurub", len = 70.426 },
			["zuuldaia ruins"] = { file = "1434\\zuuldaia-ruins", len = 18.677 },
		},
		[1435] = {
			["fallow sanctuary"] = { file = "1435\\fallow-sanctuary", len = 19.278 },
			["harborage"] = { file = "1435\\harborage", len = 13.897 },
			["ithariuss cave"] = { file = "1435\\ithariuss-cave", len = 18.364 },
			["misty reed post"] = { file = "1435\\misty-reed-post", len = 21.995 },
			["misty reed strand"] = { file = "1435\\misty-reed-strand", len = 19.67 },
			["misty valley"] = { file = "1435\\misty-valley", len = 13.244 },
			["pool of tears"] = { file = "1435\\pool-of-tears", len = 31.739 },
			["shifting mire"] = { file = "1435\\shifting-mire", len = 24.242 },
			["sorrowmurk"] = { file = "1435\\sorrowmurk", len = 18.233 },
			["splinterspear junction"] = { file = "1435\\splinterspear-junction", len = 32.104 },
			["stagalbog"] = { file = "1435\\stagalbog", len = 15.517 },
			["stagalbog cave"] = { file = "1435\\stagalbog-cave", len = 5.773 },
			["stonard"] = { file = "1435\\stonard", len = 79.438 },
			["temple of atalhakkar"] = { file = "1435\\temple-of-atalhakkar", len = 71.419 },
		},
		[1436] = {
			["alexston farmstead"] = { file = "1436\\alexston-farmstead", len = 35.187 },
			["dagger hills"] = { file = "1436\\dagger-hills", len = 23.353 },
			["dead acre"] = { file = "1436\\dead-acre", len = 25.025 },
			["deadmines"] = { file = "1436\\deadmines", len = 50.625 },
			["demonts place"] = { file = "1436\\demonts-place", len = 14.002 },
			["dust plains"] = { file = "1436\\dust-plains", len = 24.999 },
			["furlbrows pumpkin farm"] = { file = "1436\\furlbrows-pumpkin-farm", len = 27.063 },
			["gold coast quarry"] = { file = "1436\\gold-coast-quarry", len = 24.529 },
			["jangolode mine"] = { file = "1436\\jangolode-mine", len = 20.637 },
			["jansen stead"] = { file = "1436\\jansen-stead", len = 25.94 },
			["longshore"] = { file = "1436\\longshore", len = 51.696 },
			["molsen farm"] = { file = "1436\\molsen-farm", len = 17.11 },
			["moonbrook"] = { file = "1436\\moonbrook", len = 74.24 },
			["saldeans farm"] = { file = "1436\\saldeans-farm", len = 23.197 },
			["sentinel hill"] = { file = "1436\\sentinel-hill", len = 20.166 },
			["stendels pond"] = { file = "1436\\stendels-pond", len = 31.556 },
			["westfall lighthouse"] = { file = "1436\\westfall-lighthouse", len = 42.997 },
		},
		[1437] = {
			["angerfang encampment"] = { file = "1437\\angerfang-encampment", len = 36.049 },
			["baradin bay"] = { file = "1437\\baradin-bay", len = 54.596 },
			["black channel marsh"] = { file = "1437\\black-channel-marsh", len = 16.509 },
			["bluegill marsh"] = { file = "1437\\bluegill-marsh", len = 22.805 },
			["deepwater tavern"] = { file = "1437\\deepwater-tavern", len = 18.547 },
			["direforge hill"] = { file = "1437\\direforge-hill", len = 8.986 },
			["dragonmaw gates"] = { file = "1437\\dragonmaw-gates", len = 9.9 },
			["dun algaz"] = { file = "1437\\dun-algaz", len = 67.422 },
			["dun modr"] = { file = "1437\\dun-modr", len = 81.45 },
			["green belt"] = { file = "1437\\green-belt", len = 42.292 },
			["grim batol"] = { file = "1437\\grim-batol", len = 30.093 },
			["ironbeards tomb"] = { file = "1437\\ironbeards-tomb", len = 29.727 },
			["lost fleet"] = { file = "1437\\lost-fleet", len = 73.43 },
			["menethil bay"] = { file = "1437\\menethil-bay", len = 15.438 },
			["menethil harbor"] = { file = "1437\\menethil-harbor", len = 66.873 },
			["menethil keep"] = { file = "1437\\menethil-keep", len = 9.3 },
			["mosshide fen"] = { file = "1437\\mosshide-fen", len = 15.02 },
			["raptor ridge"] = { file = "1437\\raptor-ridge", len = 14.002 },
			["saltspray glen"] = { file = "1437\\saltspray-glen", len = 30.511 },
			["sundown marsh"] = { file = "1437\\sundown-marsh", len = 33.332 },
			["thandol span"] = { file = "1437\\thandol-span", len = 65.829 },
			["thelgen rock"] = { file = "1437\\thelgen-rock", len = 18.834 },
			["whelgars excavation site"] = { file = "1437\\whelgars-excavation-site", len = 36.571 },
		},
		[1438] = {
			["aldrassil"] = { file = "1438\\aldrassil", len = 17.345 },
			["banethil barrow den"] = { file = "1438\\banethil-barrow-den", len = 23.745 },
			["banethil hollow"] = { file = "1438\\banethil-hollow", len = 19.931 },
			["cleft"] = { file = "1438\\cleft", len = 22.465 },
			["dolanaar"] = { file = "1438\\dolanaar", len = 23.432 },
			["fel rock"] = { file = "1438\\fel-rock", len = 24.424 },
			["gnarlpine hold"] = { file = "1438\\gnarlpine-hold", len = 8.046 },
			["lake alameth"] = { file = "1438\\lake-alameth", len = 19.67 },
			["oracle glade"] = { file = "1438\\oracle-glade", len = 40.725 },
			["pools of arlithrien"] = { file = "1438\\pools-of-arlithrien", len = 22.387 },
			["ruttheran village"] = { file = "1438\\ruttheran-village", len = 54.282 },
			["shadowglen"] = { file = "1438\\shadowglen", len = 38.034 },
			["shadowthread cave"] = { file = "1438\\shadowthread-cave", len = 23.536 },
			["starbreeze village"] = { file = "1438\\starbreeze-village", len = 25.469 },
			["wellspring lake"] = { file = "1438\\wellspring-lake", len = 27.768 },
			["wellspring river"] = { file = "1438\\wellspring-river", len = 17.293 },
		},
		[1439] = {
			["ametharan"] = { file = "1439\\ametharan", len = 76.878 },
			["auberdine"] = { file = "1439\\auberdine", len = 79.83 },
			["bashalaran"] = { file = "1439\\bashalaran", len = 71.471 },
			["blackwood den"] = { file = "1439\\blackwood-den", len = 28.212 },
			["cliffspring falls"] = { file = "1439\\cliffspring-falls", len = 38.452 },
			["cliffspring river"] = { file = "1439\\cliffspring-river", len = 13.401 },
			["grove of the ancients"] = { file = "1439\\grove-of-the-ancients", len = 20.793 },
			["long wash"] = { file = "1439\\long-wash", len = 23.406 },
			["masters glaive"] = { file = "1439\\masters-glaive", len = 72.516 },
			["mists edge"] = { file = "1439\\mists-edge", len = 28.447 },
			["remtravels excavation"] = { file = "1439\\remtravels-excavation", len = 28.761 },
			["ruins of mathystra"] = { file = "1439\\ruins-of-mathystra", len = 52.976 },
			["tower of althalaxx"] = { file = "1439\\tower-of-althalaxx", len = 55.353 },
			["twilight vale"] = { file = "1439\\twilight-vale", len = 19.513 },
			["wildbend river"] = { file = "1439\\wildbend-river", len = 19.592 },
		},
		[1440] = {
			["astranaar"] = { file = "1440\\astranaar", len = 39.445 },
			["bathrans haunt"] = { file = "1440\\bathrans-haunt", len = 54.988 },
			["blackfathom deeps"] = { file = "1440\\blackfathom-deeps", len = 50.155 },
			["bloodtooth camp"] = { file = "1440\\bloodtooth-camp", len = 25.913 },
			["bough shadow"] = { file = "1440\\bough-shadow", len = 29.597 },
			["demon fall canyon"] = { file = "1440\\demon-fall-canyon", len = 52.872 },
			["demon fall ridge"] = { file = "1440\\demon-fall-ridge", len = 27.507 },
			["dordanil barrow den"] = { file = "1440\\dordanil-barrow-den", len = 45.949 },
			["falfarren river"] = { file = "1440\\falfarren-river", len = 59.637 },
			["fallen sky lake"] = { file = "1440\\fallen-sky-lake", len = 21.42 },
			["felfire hill"] = { file = "1440\\felfire-hill", len = 25.417 },
			["fire scar shrine"] = { file = "1440\\fire-scar-shrine", len = 37.015 },
			["forest song"] = { file = "1440\\forest-song", len = 31.216 },
			["greenpaw village"] = { file = "1440\\greenpaw-village", len = 11.206 },
			["howling vale"] = { file = "1440\\howling-vale", len = 52.976 },
			["iris lake"] = { file = "1440\\iris-lake", len = 29.571 },
			["kargathia keep"] = { file = "1440\\kargathia-keep", len = 39.131 },
			["lake falathim"] = { file = "1440\\lake-falathim", len = 23.876 },
			["maestras post"] = { file = "1440\\maestras-post", len = 30.067 },
			["mystral lake"] = { file = "1440\\mystral-lake", len = 22.309 },
			["night run"] = { file = "1440\\night-run", len = 48.692 },
			["nightsong woods"] = { file = "1440\\nightsong-woods", len = 78.08 },
			["raynewood retreat"] = { file = "1440\\raynewood-retreat", len = 42.58 },
			["ruins of ordilaran"] = { file = "1440\\ruins-of-ordilaran", len = 32.784 },
			["ruins of stardust"] = { file = "1440\\ruins-of-stardust", len = 41.77 },
			["satyrnaar"] = { file = "1440\\satyrnaar", len = 44.121 },
			["shady nook"] = { file = "1440\\shady-nook", len = 18.312 },
			["shrine of aessina"] = { file = "1440\\shrine-of-aessina", len = 7.549 },
			["silverwind refuge"] = { file = "1440\\silverwind-refuge", len = 22.178 },
			["silverwing grove"] = { file = "1440\\silverwing-grove", len = 16.692 },
			["silverwing outpost"] = { file = "1440\\silverwing-outpost", len = 24.607 },
			["southfury river"] = { file = "1440\\southfury-river", len = 62.276 },
			["splintertree post"] = { file = "1440\\splintertree-post", len = 55.484 },
			["talondeep path"] = { file = "1440\\talondeep-path", len = 24.006 },
			["thistlefur village"] = { file = "1440\\thistlefur-village", len = 22.387 },
			["warsong labor camp"] = { file = "1440\\warsong-labor-camp", len = 24.921 },
			["warsong lumber camp"] = { file = "1440\\warsong-lumber-camp", len = 50.521 },
			["xavian"] = { file = "1440\\xavian", len = 60.578 },
			["zoram strand"] = { file = "1440\\zoram-strand", len = 79.595 },
			["zoramgar outpost"] = { file = "1440\\zoramgar-outpost", len = 10.083 },
		},
		[1441] = {
			["camp ethok"] = { file = "1441\\camp-ethok", len = 19.905 },
			["darkcloud pinnacle"] = { file = "1441\\darkcloud-pinnacle", len = 47.046 },
			["freewind post"] = { file = "1441\\freewind-post", len = 72.385 },
			["great lift"] = { file = "1441\\great-lift", len = 13.819 },
			["highperch"] = { file = "1441\\highperch", len = 14.785 },
			["ironstone camp"] = { file = "1441\\ironstone-camp", len = 4.937 },
			["mirage raceway"] = { file = "1441\\mirage-raceway", len = 45.087 },
			["razorfen downs"] = { file = "1441\\razorfen-downs", len = 79.412 },
			["roguefeather den"] = { file = "1441\\roguefeather-den", len = 18.26 },
			["rustmaul dig site"] = { file = "1441\\rustmaul-dig-site", len = 31.504 },
			["screeching canyon"] = { file = "1441\\screeching-canyon", len = 13.949 },
			["shimmering flats"] = { file = "1441\\shimmering-flats", len = 59.481 },
			["splithoof crag"] = { file = "1441\\splithoof-crag", len = 23.301 },
			["splithoof hold"] = { file = "1441\\splithoof-hold", len = 16.692 },
			["tahonda ruins"] = { file = "1441\\tahonda-ruins", len = 38.06 },
			["weathered nook"] = { file = "1441\\weathered-nook", len = 18.364 },
			["weazels crater"] = { file = "1441\\weazels-crater", len = 33.358 },
			["whitereach post"] = { file = "1441\\whitereach-post", len = 8.699 },
			["windbreak canyon"] = { file = "1441\\windbreak-canyon", len = 17.58 },
		},
		[1442] = {
			["blackwolf river"] = { file = "1442\\blackwolf-river", len = 13.479 },
			["boulderslide cavern"] = { file = "1442\\boulderslide-cavern", len = 14.132 },
			["boulderslide ravine"] = { file = "1442\\boulderslide-ravine", len = 32.914 },
			["camp aparaje"] = { file = "1442\\camp-aparaje", len = 16.17 },
			["charred vale"] = { file = "1442\\charred-vale", len = 71.993 },
			["cragpool lake"] = { file = "1442\\cragpool-lake", len = 20.166 },
			["greatwood vale"] = { file = "1442\\greatwood-vale", len = 28.604 },
			["grimtotem post"] = { file = "1442\\grimtotem-post", len = 17.946 },
			["malakajin"] = { file = "1442\\malakajin", len = 18.364 },
			["mirkfallon lake"] = { file = "1442\\mirkfallon-lake", len = 21.342 },
			["sishir canyon"] = { file = "1442\\sishir-canyon", len = 25.757 },
			["stonetalon peak"] = { file = "1442\\stonetalon-peak", len = 35.161 },
			["sun rock retreat"] = { file = "1442\\sun-rock-retreat", len = 43.285 },
			["talon den"] = { file = "1442\\talon-den", len = 14.315 },
			["talondeep path"] = { file = "1442\\talondeep-path", len = 24.503 },
			["webwinder path"] = { file = "1442\\webwinder-path", len = 16.692 },
			["windshear crag"] = { file = "1442\\windshear-crag", len = 66.56 },
			["windshear mine"] = { file = "1442\\windshear-mine", len = 12.983 },
		},
		[1443] = {
			["bolgans hole"] = { file = "1443\\bolgans-hole", len = 22.178 },
			["ethel rethor"] = { file = "1443\\ethel-rethor", len = 18.233 },
			["gelkis village"] = { file = "1443\\gelkis-village", len = 39.497 },
			["ghost walker post"] = { file = "1443\\ghost-walker-post", len = 54.831 },
			["kodo graveyard"] = { file = "1443\\kodo-graveyard", len = 16.353 },
			["kolkar village"] = { file = "1443\\kolkar-village", len = 18.233 },
			["kormeks hut"] = { file = "1443\\kormeks-hut", len = 24.137 },
			["magram village"] = { file = "1443\\magram-village", len = 21.316 },
			["mannoroc coven"] = { file = "1443\\mannoroc-coven", len = 71.027 },
			["nijels point"] = { file = "1443\\nijels-point", len = 58.305 },
			["ranazjar isle"] = { file = "1443\\ranazjar-isle", len = 19.017 },
			["sargeron"] = { file = "1443\\sargeron", len = 37.616 },
			["sartheris strand"] = { file = "1443\\sartheris-strand", len = 30.459 },
			["scrabblescrews camp"] = { file = "1443\\scrabblescrews-camp", len = 18.416 },
			["shadowbreak ravine"] = { file = "1443\\shadowbreak-ravine", len = 21.655 },
			["shadowprey village"] = { file = "1443\\shadowprey-village", len = 17.815 },
			["tethris aran"] = { file = "1443\\tethris-aran", len = 20.846 },
			["thunder axe fortress"] = { file = "1443\\thunder-axe-fortress", len = 59.037 },
			["valley of bones"] = { file = "1443\\valley-of-bones", len = 18.129 },
			["valley of spears"] = { file = "1443\\valley-of-spears", len = 20.323 },
		},
		[1444] = {
			["camp mojache"] = { file = "1444\\camp-mojache", len = 16.326 },
			["dire maul"] = { file = "1444\\dire-maul", len = 79.961 },
			["dream bough"] = { file = "1444\\dream-bough", len = 15.569 },
			["feathermoon stronghold"] = { file = "1444\\feathermoon-stronghold", len = 29.1 },
			["feral scar vale"] = { file = "1444\\feral-scar-vale", len = 10.083 },
			["forgotten coast"] = { file = "1444\\forgotten-coast", len = 41.796 },
			["frayfeather highlands"] = { file = "1444\\frayfeather-highlands", len = 19.984 },
			["gordunni outpost"] = { file = "1444\\gordunni-outpost", len = 22.805 },
			["grimtotem compound"] = { file = "1444\\grimtotem-compound", len = 18.599 },
			["high wilderness"] = { file = "1444\\high-wilderness", len = 20.323 },
			["isle of dread"] = { file = "1444\\isle-of-dread", len = 68.78 },
			["jademir lake"] = { file = "1444\\jademir-lake", len = 17.946 },
			["lariss pavilion"] = { file = "1444\\lariss-pavilion", len = 39.602 },
			["lower wilds"] = { file = "1444\\lower-wilds", len = 10.606 },
			["oneiros"] = { file = "1444\\oneiros", len = 6.06 },
			["rage scar hold"] = { file = "1444\\rage-scar-hold", len = 17.711 },
			["ruins of isildien"] = { file = "1444\\ruins-of-isildien", len = 16.588 },
			["ruins of ravenwind"] = { file = "1444\\ruins-of-ravenwind", len = 22.857 },
			["ruins of solarsal"] = { file = "1444\\ruins-of-solarsal", len = 22.021 },
			["sardor isle"] = { file = "1444\\sardor-isle", len = 18.312 },
			["shalzarus lair"] = { file = "1444\\shalzarus-lair", len = 19.278 },
			["thalanaar"] = { file = "1444\\thalanaar", len = 17.894 },
			["twin colossals"] = { file = "1444\\twin-colossals", len = 25.522 },
			["verdantis river"] = { file = "1444\\verdantis-river", len = 16.039 },
			["wildwind lake"] = { file = "1444\\wildwind-lake", len = 15.569 },
			["woodpaw den"] = { file = "1444\\woodpaw-den", len = 20.898 },
			["woodpaw hills"] = { file = "1444\\woodpaw-hills", len = 31.373 },
			["writhing deep"] = { file = "1444\\writhing-deep", len = 32.235 },
		},
		[1445] = {
			["alcaz island"] = { file = "1445\\alcaz-island", len = 38.086 },
			["beezils wreck"] = { file = "1445\\beezils-wreck", len = 17.528 },
			["bloodfen burrow"] = { file = "1445\\bloodfen-burrow", len = 24.32 },
			["bluefen"] = { file = "1445\\bluefen", len = 19.017 },
			["brackenwall village"] = { file = "1445\\brackenwall-village", len = 58.932 },
			["darkmist cavern"] = { file = "1445\\darkmist-cavern", len = 34.09 },
			["den of flame"] = { file = "1445\\den-of-flame", len = 30.015 },
			["dragonmurk"] = { file = "1445\\dragonmurk", len = 17.815 },
			["dreadmurk shore"] = { file = "1445\\dreadmurk-shore", len = 14.681 },
			["dustwallow bay"] = { file = "1445\\dustwallow-bay", len = 17.946 },
			["emberstrifes den"] = { file = "1445\\emberstrifes-den", len = 16.509 },
			["foothold citadel"] = { file = "1445\\foothold-citadel", len = 23.197 },
			["lost point"] = { file = "1445\\lost-point", len = 20.898 },
			["north point tower"] = { file = "1445\\north-point-tower", len = 17.998 },
			["onyxias lair"] = { file = "1445\\onyxias-lair", len = 80.3 },
			["quagmire"] = { file = "1445\\quagmire", len = 29.179 },
			["sentry point"] = { file = "1445\\sentry-point", len = 15.935 },
			["shady rest inn"] = { file = "1445\\shady-rest-inn", len = 26.149 },
			["stonemaul ruins"] = { file = "1445\\stonemaul-ruins", len = 77.714 },
			["swamplight manor"] = { file = "1445\\swamplight-manor", len = 23.144 },
			["theramore isle"] = { file = "1445\\theramore-isle", len = 88.424 },
			["tidefury cove"] = { file = "1445\\tidefury-cove", len = 25.469 },
			["witch hill"] = { file = "1445\\witch-hill", len = 11.206 },
			["wyrmbog"] = { file = "1445\\wyrmbog", len = 18.312 },
		},
		[1446] = {
			["abyssal sands"] = { file = "1446\\abyssal-sands", len = 6.191 },
			["broken pillar"] = { file = "1446\\broken-pillar", len = 17.424 },
			["caverns of time"] = { file = "1446\\caverns-of-time", len = 59.35 },
			["dunemaul compound"] = { file = "1446\\dunemaul-compound", len = 11.546 },
			["eastmoon ruins"] = { file = "1446\\eastmoon-ruins", len = 18.73 },
			["gadgetzan"] = { file = "1446\\gadgetzan", len = 81.606 },
			["gaping chasm"] = { file = "1446\\gaping-chasm", len = 27.559 },
			["lands end beach"] = { file = "1446\\lands-end-beach", len = 22.1 },
			["lost rigger cove"] = { file = "1446\\lost-rigger-cove", len = 12.826 },
			["noonshade ruins"] = { file = "1446\\noonshade-ruins", len = 16.091 },
			["noxious lair"] = { file = "1446\\noxious-lair", len = 64.418 },
			["sandsorrow watch"] = { file = "1446\\sandsorrow-watch", len = 11.076 },
			["south seas"] = { file = "1446\\south-seas", len = 74.057 },
			["southbreak shore"] = { file = "1446\\southbreak-shore", len = 12.173 },
			["southmoon ruins"] = { file = "1446\\southmoon-ruins", len = 11.076 },
			["steamwheedle port"] = { file = "1446\\steamwheedle-port", len = 24.79 },
			["thistleshrub valley"] = { file = "1446\\thistleshrub-valley", len = 19.618 },
			["uldum"] = { file = "1446\\uldum", len = 17.476 },
			["valley of the watchers"] = { file = "1446\\valley-of-the-watchers", len = 14.184 },
			["waterspring field"] = { file = "1446\\waterspring-field", len = 40.751 },
			["wavestrider beach"] = { file = "1446\\wavestrider-beach", len = 16.744 },
			["zalashjis den"] = { file = "1446\\zalashjis-den", len = 15.673 },
			["zulfarrak"] = { file = "1446\\zulfarrak", len = 69.146 },
		},
		[1447] = {
			["bay of storms"] = { file = "1447\\bay-of-storms", len = 17.006 },
			["bears head"] = { file = "1447\\bears-head", len = 23.562 },
			["bitter reaches"] = { file = "1447\\bitter-reaches", len = 14.315 },
			["forlorn ridge"] = { file = "1447\\forlorn-ridge", len = 18.599 },
			["haldarr encampment"] = { file = "1447\\haldarr-encampment", len = 14.785 },
			["hetaeras clutch"] = { file = "1447\\hetaeras-clutch", len = 8.803 },
			["jagged reef"] = { file = "1447\\jagged-reef", len = 24.033 },
			["lake mennar"] = { file = "1447\\lake-mennar", len = 33.593 },
			["legash encampment"] = { file = "1447\\legash-encampment", len = 17.528 },
			["ravencrest monument"] = { file = "1447\\ravencrest-monument", len = 40.307 },
			["rethress sanctum"] = { file = "1447\\rethress-sanctum", len = 15.073 },
			["ruined reaches"] = { file = "1447\\ruined-reaches", len = 53.682 },
			["ruins of eldarath"] = { file = "1447\\ruins-of-eldarath", len = 68.571 },
			["scalebeards cave"] = { file = "1447\\scalebeards-cave", len = 17.397 },
			["shadowsong shrine"] = { file = "1447\\shadowsong-shrine", len = 38.426 },
			["shattered strand"] = { file = "1447\\shattered-strand", len = 29.074 },
			["southfury river"] = { file = "1447\\southfury-river", len = 45.531 },
			["southridge beach"] = { file = "1447\\southridge-beach", len = 19.566 },
			["storm cliffs"] = { file = "1447\\storm-cliffs", len = 16.927 },
			["talrendis point"] = { file = "1447\\talrendis-point", len = 19.592 },
			["temple of arkkoran"] = { file = "1447\\temple-of-arkkoran", len = 30.589 },
			["temple of zin malor"] = { file = "1447\\temple-of-zin-malor", len = 49.345 },
			["thalassian base camp"] = { file = "1447\\thalassian-base-camp", len = 63.686 },
			["tower of eldara"] = { file = "1447\\tower-of-eldara", len = 20.402 },
			["ursolan"] = { file = "1447\\ursolan", len = 15.726 },
			["valormok"] = { file = "1447\\valormok", len = 52.584 },
		},
		[1448] = {
			["bloodvenom falls"] = { file = "1448\\bloodvenom-falls", len = 15.099 },
			["bloodvenom post"] = { file = "1448\\bloodvenom-post", len = 28.447 },
			["bloodvenom river"] = { file = "1448\\bloodvenom-river", len = 18.913 },
			["deadwood village"] = { file = "1448\\deadwood-village", len = 18.26 },
			["emerald sanctuary"] = { file = "1448\\emerald-sanctuary", len = 15.151 },
			["felpaw village"] = { file = "1448\\felpaw-village", len = 16.353 },
			["irontree cavern"] = { file = "1448\\irontree-cavern", len = 12.8 },
			["irontree woods"] = { file = "1448\\irontree-woods", len = 49.58 },
			["jadefire glen"] = { file = "1448\\jadefire-glen", len = 17.946 },
			["jadefire run"] = { file = "1448\\jadefire-run", len = 14.132 },
			["jaedenar"] = { file = "1448\\jaedenar", len = 54.988 },
			["morlosaran"] = { file = "1448\\morlosaran", len = 28.604 },
			["ruins of constellas"] = { file = "1448\\ruins-of-constellas", len = 40.516 },
			["shadow hold"] = { file = "1448\\shadow-hold", len = 52.872 },
			["shatter scar vale"] = { file = "1448\\shatter-scar-vale", len = 15.099 },
			["shrine of the deceiver"] = { file = "1448\\shrine-of-the-deceiver", len = 19.383 },
			["talonbranch glade"] = { file = "1448\\talonbranch-glade", len = 11.206 },
			["timbermaw hold"] = { file = "1448\\timbermaw-hold", len = 71.366 },
		},
		[1449] = {
			["fire plume ridge"] = { file = "1449\\fire-plume-ridge", len = 64.862 },
			["fungal rock"] = { file = "1449\\fungal-rock", len = 18.677 },
			["golakka hot springs"] = { file = "1449\\golakka-hot-springs", len = 31.817 },
			["ironstone plateau"] = { file = "1449\\ironstone-plateau", len = 20.219 },
			["lakkari tar pits"] = { file = "1449\\lakkari-tar-pits", len = 24.633 },
			["marshals refuge"] = { file = "1449\\marshals-refuge", len = 36.232 },
			["marshlands"] = { file = "1449\\marshlands", len = 43.781 },
			["slithering scar"] = { file = "1449\\slithering-scar", len = 15.02 },
			["terror run"] = { file = "1449\\terror-run", len = 15.151 },
		},
		[1450] = {
			["lake eluneara"] = { file = "1450\\lake-eluneara", len = 21.342 },
			["nighthaven"] = { file = "1450\\nighthaven", len = 68.859 },
			["shrine of remulos"] = { file = "1450\\shrine-of-remulos", len = 16.326 },
			["stormrage barrow dens"] = { file = "1450\\stormrage-barrow-dens", len = 77.479 },
			["timbermaw hold"] = { file = "1450\\timbermaw-hold", len = 79.83 },
		},
		[1451] = {
			["bones of grakkarond"] = { file = "1451\\bones-of-grakkarond", len = 8.046 },
			["bronzebeard encampment"] = { file = "1451\\bronzebeard-encampment", len = 6.374 },
			["cenarion hold"] = { file = "1451\\cenarion-hold", len = 67.291 },
			["crystal vale"] = { file = "1451\\crystal-vale", len = 32.496 },
			["hiveashi"] = { file = "1451\\hiveashi", len = 9.77 },
			["hiveregal"] = { file = "1451\\hiveregal", len = 10.083 },
			["hivezora"] = { file = "1451\\hivezora", len = 5.068 },
			["ortells hideout"] = { file = "1451\\ortells-hideout", len = 7.445 },
			["ravaged twilight camp"] = { file = "1451\\ravaged-twilight-camp", len = 14.002 },
			["scarab dais"] = { file = "1451\\scarab-dais", len = 10.083 },
			["scarab wall"] = { file = "1451\\scarab-wall", len = 47.595 },
			["southwind village"] = { file = "1451\\southwind-village", len = 62.589 },
			["staghelm point"] = { file = "1451\\staghelm-point", len = 28.082 },
			["swarming pillar"] = { file = "1451\\swarming-pillar", len = 26.331 },
			["twilight base camp"] = { file = "1451\\twilight-base-camp", len = 16.222 },
			["twilight outpost"] = { file = "1451\\twilight-outpost", len = 12.173 },
			["twilight post"] = { file = "1451\\twilight-post", len = 15.752 },
			["twilights run"] = { file = "1451\\twilights-run", len = 24.268 },
			["valors rest"] = { file = "1451\\valors-rest", len = 29.884 },
		},
		[1452] = {
			["banthallow barrow den"] = { file = "1452\\banthallow-barrow-den", len = 11.729 },
			["darkwhisper gorge"] = { file = "1452\\darkwhisper-gorge", len = 24.895 },
			["dun mandarr"] = { file = "1452\\dun-mandarr", len = 14.472 },
			["everlook"] = { file = "1452\\everlook", len = 17.998 },
			["frostfire hot springs"] = { file = "1452\\frostfire-hot-springs", len = 39.053 },
			["frostsaber rock"] = { file = "1452\\frostsaber-rock", len = 18.364 },
			["frostwhisper gorge"] = { file = "1452\\frostwhisper-gorge", len = 14.681 },
			["hidden grove"] = { file = "1452\\hidden-grove", len = 40.255 },
			["ice thistle hills"] = { file = "1452\\ice-thistle-hills", len = 37.695 },
			["lake keltheril"] = { file = "1452\\lake-keltheril", len = 23.562 },
			["mazthoril"] = { file = "1452\\mazthoril", len = 58.697 },
			["moon horror den"] = { file = "1452\\moon-horror-den", len = 26.593 },
			["owl wing thicket"] = { file = "1452\\owl-wing-thicket", len = 19.331 },
			["ruins of keltheril"] = { file = "1452\\ruins-of-keltheril", len = 58.07 },
			["starfall village"] = { file = "1452\\starfall-village", len = 24.477 },
			["timbermaw hold"] = { file = "1452\\timbermaw-hold", len = 78.237 },
			["timbermaw post"] = { file = "1452\\timbermaw-post", len = 19.252 },
			["winterfall village"] = { file = "1452\\winterfall-village", len = 16.222 },
		},
		[1453] = {
			["champions hall"] = { file = "1453\\champions-hall", len = 12.695 },
			["deeprun tram"] = { file = "1453\\deeprun-tram", len = 66.482 },
			["valley of heroes"] = { file = "1453\\valley-of-heroes", len = 47.961 },
		},
		[1454] = {
			["hall of legends"] = { file = "1454\\hall-of-legends", len = 13.009 },
			["ragefire chasm"] = { file = "1454\\ragefire-chasm", len = 69.068 },
		},
		[1455] = {
			["deeprun tram"] = { file = "1455\\deeprun-tram", len = 67.735 },
			["gates of ironforge"] = { file = "1455\\gates-of-ironforge", len = 31.739 },
		},
		[1456] = {
			["elder rise"] = { file = "1456\\elder-rise", len = 29.832 },
			["hunter rise"] = { file = "1456\\hunter-rise", len = 23.144 },
			["pools of vision"] = { file = "1456\\pools-of-vision", len = 25.182 },
			["spirit rise"] = { file = "1456\\spirit-rise", len = 24.006 },
		},
		[1457] = {
			["cenarion enclave"] = { file = "1457\\cenarion-enclave", len = 76.669 },
			["craftsmens terrace"] = { file = "1457\\craftsmens-terrace", len = 29.936 },
			["temple gardens"] = { file = "1457\\temple-gardens", len = 49.633 },
			["tradesmens terrace"] = { file = "1457\\tradesmens-terrace", len = 26.645 },
			["warriors terrace"] = { file = "1457\\warriors-terrace", len = 50.442 },
		},
		[1458] = {
			["ruins of lordaeron"] = { file = "1458\\ruins-of-lordaeron", len = 81.972 },
		},
	},
}

-- C_AddOns is the modern home of GetAddOnMetadata and the global is the older
-- one. A pack that reads only through C_AddOns errors at load on any client
-- that predates it, and a shipped pack cannot be fixed retroactively.
		pack.addon = 'SpokenPlacesAudio_esMX'
		pack.quality = 'high'
		pack.bitrate = 128
		pack.packVersion = '1.0.3'
		pack.language = 'esMX'
		SpokenPlacesAudioPacks['SpokenPlacesAudio_esMX'] = pack
	end
end

-- Warned-about folder names, so an unreadable pack says so once per session
-- rather than on every lookup.
local warnedFormat = {}

-- Every installed pack this version can read, best match first. Packs are
-- registered by the data addons themselves at load time, so this is cheap enough
-- to walk on demand and always reflects what is loaded.
--
-- Every pack is listed whatever it narrates -- packs are interchangeable, and an
-- English pack under German text beats silence. Pass `lang` only to
-- narrow the answer to one language.
function SpokenPlaces:GetAudioPacks(lang)
	local packs = {}
	-- Three generations of the registry, newest first. SpokenZonesAudioPacks and before it
	-- ZoneLoreAudioPacks are what packs published under those names write into, and those files
	-- are on players' disks and cannot be changed, so reading them is permanent. Packs built from
	-- now on write only SpokenPlacesAudioPacks. All are keyed by folder name, so a pack in two is
	-- seen once, and a SpokenZonesAudio folder beside its SpokenPlacesAudio replacement is
	-- not seen at all: the same pack, one release older.
	local seen = {}
	local found = false

	-- Not a loop over a table of the two: a nil first registry would end an ipairs
	-- immediately and the second would never be read.
	local function Collect(registry)
		if type(registry) ~= "table" then
			return
		end
		for name, pack in pairs(registry) do
			if type(pack) ~= "table" or seen[name] or seen[(name:gsub("^SpokenZonesAudio", "SpokenPlacesAudio"))] then
				-- Already taken from a newer registry, replaced by its renamed folder, or not a pack.
			elseif pack.version == PACK_FORMAT then
				seen[name] = true
				found = true
				-- A pack published before languages existed carries no language and
				-- is English, which is the same default Sounds.lua applies. Filled in
				-- here, once, so nothing that reads a pack from this list re-applies it.
				pack.language = pack.language or "enUS"
				local langMatch = (lang == nil) or (pack.language == lang)
					or ((lang == "esES" or lang == "esMX") and (pack.language == "esES" or pack.language == "esMX"))
				if langMatch then
					table.insert(packs, pack)
				end
			else
				seen[name] = true
				found = true
				if not warnedFormat[name] then
					warnedFormat[name] = true
					self:Print(
						"|cffffcc00%s is built for a different version of Spoken Places|r "
							.. "(pack format %s, this build reads %d) -- update both to the same major version",
						name, tostring(pack.version), PACK_FORMAT
					)
				end
			end
		end
	end
	Collect(_G.SpokenPlacesAudioPacks)
	Collect(_G.SpokenZonesAudioPacks)
	Collect(_G.ZoneLoreAudioPacks)

	if not found and type(_G.ZoneLoreAudioData) == "table" and _G.ZoneLoreAudioData.version == PACK_FORMAT then
		-- A pack predating the registry. It only knew the one folder name.
		local legacy = _G.ZoneLoreAudioData
		legacy.addon = legacy.addon or "ZoneLoreAudio"
		legacy.quality = legacy.quality or "standard"
		legacy.bitrate = legacy.bitrate or 0
		legacy.language = legacy.language or "enUS"
		if lang == nil or legacy.language == lang then
			table.insert(packs, legacy)
		end
	end

	-- Best default first: the voice language, then the client's own locale,
	-- then bitrate descending, then folder name so the order is stable when two
	-- packs report the same bitrate (or none at all).
	local reading = self:GetVoiceLanguage()
	local client = self.clientLocale
	local function rank(pack)
		local language = pack.language
		if language == reading then
			return 0
		elseif language == client then
			return 1
		end
		return 2
	end
	table.sort(packs, function(a, b)
		local ra, rb = rank(a), rank(b)
		if ra ~= rb then
			return ra < rb
		end
		if (a.bitrate or 0) ~= (b.bitrate or 0) then
			return (a.bitrate or 0) > (b.bitrate or 0)
		end
		return tostring(a.addon) < tostring(b.addon)
	end)

	return packs
end

-- The language narration is heard in: Spoken's Voice Language, as every module's is, "Auto"
-- being the client's. The text's language (GetLanguage) is a choice apart.
function SpokenPlaces:GetVoiceLanguage()
	local Spoken = _G.Spoken
	if Spoken and Spoken.VoiceLanguage then
		return Spoken:VoiceLanguage()
	end
	return self:GetLanguage()
end

-- The language a story is heard in where the voice language has no recording of it: Spoken's
-- If a Voice Is Missing, English unless the player chose otherwise. Nil for Stay Silent.
function SpokenPlaces:GetFallbackLanguage()
	local Spoken = _G.Spoken
	local fallback
	if Spoken and Spoken.GetLanguageChoice then
		local _
		_, fallback = Spoken:GetLanguageChoice()
	end
	if fallback == "none" then
		return nil
	end
	return fallback or "enUS"
end

-- The pack narration plays from: one in the voice language, else one in the fallback language,
-- else nil.
--
-- Between two packs of one language (a retired 64 kbps pack beside the current one), the one
-- /spp audio chose, kept as a folder name rather than an index: a player who uninstalls the
-- high-quality pack should fall back to whatever is left instead of pointing at whichever pack
-- happens to occupy that slot afterwards.
function SpokenPlaces:GetActiveAudioPack()
	local packs = self:GetAudioPacks(self:GetVoiceLanguage())
	local fallback = self:GetFallbackLanguage()
	if #packs == 0 and fallback then
		packs = self:GetAudioPacks(fallback)
	end
	if #packs == 0 then
		return nil
	end

	local stored = self:Get("audioPack")
	local preferred = type(stored) == "table" and stored[packs[1].language] or nil
	if type(preferred) == "string" then
		for i = 1, #packs do
			if packs[i].addon == preferred then
				return packs[i]
			end
		end
	end

	-- No preference, or the preferred pack is gone: best available wins.
	return packs[1]
end

-- Switches packs. Returns false when the name is not an installed pack, so the
-- caller can say so rather than storing a preference that resolves to nothing.
function SpokenPlaces:SetActiveAudioPack(name)
	local packs = self:GetAudioPacks()
	for i = 1, #packs do
		if packs[i].addon == name then
			local stored = self:Get("audioPack")
			if type(stored) ~= "table" then
				stored = {}
			end
			stored[packs[i].language] = name
			self:Set("audioPack", stored)
			self:StopLore()
			self:NotifyAudioChanged()
			return true
		end
	end
	return false
end

-- "Deutsch" -- for the options dropdown and /spp audio. A pack is named by the
-- language it narrates, the one being read included: there is one pack per language,
-- so that is what tells them apart. Bitrate is added only when two installed packs
-- share a language, which now means someone kept the retired 64 kbps pack beside the
-- current one. A pack in a language this client cannot draw keeps its ASCII code,
-- which every client can draw, instead of boxes.
function SpokenPlaces:GetAudioPackLabel(pack)
	if not pack then
		return "none"
	end
	local language = pack.language
	local label = language
	if self:CanRenderLanguage(language) then
		local info = self:GetLocaleInfo(language)
		label = (info and info.native) or language
	end
	if pack.bitrate and pack.bitrate > 0 then
		for _, other in ipairs(self:GetAudioPacks(language)) do
			if other ~= pack and other.language == language then
				return ("%s (%d kbps)"):format(label, pack.bitrate)
			end
		end
	end
	return label
end

--------------------------------------------------------------------------------
-- Lookup
--------------------------------------------------------------------------------

function SpokenPlaces:IsVoiceEnabled()
	return self:Get("voiceEnabled") and true or false
end

-- Path and duration for a lore entry. `areaKey` is a canonical subzone key (see
-- SpokenPlaces:NormaliseAreaKey), or nil for the zone itself.
--
-- Duration comes from the generated lookup because there is no way to ask the
-- client how long a sound file is; without one the button could never reset itself.
function SpokenPlaces:GetAudioClip(mapID, areaKey)
	if not mapID then
		return nil, nil
	end

	local active = self:GetActiveAudioPack()
	if not active then
		return nil, nil
	end

	-- The active pack, then the fallback language's, entry by entry: a German pack that has not
	-- narrated an area yet leaves it to the English one rather than to silence, the way a quest
	-- line falls back. The entry keys are the same in every language, so any pack names the area
	-- alike. With Stay Silent, nothing else is tried.
	local candidates = { active }
	local fallback = self:GetFallbackLanguage()
	if fallback and active.language ~= fallback then
		for _, pack in ipairs(self:GetAudioPacks(fallback)) do
			table.insert(candidates, pack)
		end
	end

	for _, pack in ipairs(candidates) do
		local clip
		if areaKey then
			local zoneClips = pack.subzones and pack.subzones[mapID]
			clip = zoneClips and zoneClips[areaKey]
		else
			clip = pack.zones and pack.zones[mapID]
		end
		if clip and clip.file then
			return "Interface\\AddOns\\" .. pack.addon .. "\\Sounds\\" .. clip.file .. ".mp3",
				clip.len, pack, clip.file, clip.times
		end
	end

	return nil, nil
end

--- The language narration plays in: the active pack's, or the one being read when there is
--- no pack. What a contribution says the player was hearing.
function SpokenPlaces:GetPackLanguage()
	local pack = self:GetActiveAudioPack()
	return pack and pack.language or self:GetLanguage()
end

-- The button the player shows under a lore clip: this addon's own Report, told which
-- entry it now stands beside. There is no Read button. The text is reached from the map,
-- the minimap menu and /spp, and a button on the player that opened a window over the very
-- thing being read was one way too many.
local ACTIONS = {
	{
		id = "report",
		-- An icon in the corner rather than a word beside the line.
		icon = [[Interface\HelpFrame\HelpIcon-Bug]],
		label = L.OPT_REPORT_PROBLEM,
		anchor = "topright",
		tooltip = function(tooltip)
			tooltip:SetText(L.OPT_REPORT_PROBLEM)
		end,
		onClick = function(clip)
			if not clip then
				return
			end
			-- Filed under the voice language, not the pack the clip came from: an entry the
			-- active pack lacks plays the English fallback, and "no German" belongs beside
			-- the German entry.
			SpokenPlaces:ShowReport(clip.mapID, clip.areaKey, SpokenPlaces:GetVoiceLanguage())
		end,
	}
}

--- The place one level up from a zone, as Azeroth's Compendium nests them: a city's zone, a
--- zone's continent, a continent's world. Nil for the world.
function SpokenPlaces:PlaceAbove(mapID)
	local C = _G.SpokenCompendium
	-- A Compendium that failed to load costs the header, not the clip.
	if not C or mapID == C.WORLD then return nil end
	for _, continent in ipairs(C.CONTINENTS) do
		if continent == mapID then return C.WORLD end
	end
	return C.CITY_IN[mapID] or C.ContinentOf(mapID) or C.WORLD
end

-- A Spoken clip for a lore entry, or nil when the installed pack cannot narrate it.
-- One factory so that every route to a clip -- a click, a slash command, a
-- discovery -- produces the same shape.
--
-- The key is the line id the website and the generation pipeline use -- z:{mapID} or
-- s:{mapID}:{key} -- and it is frozen: it is what the player dedups on, what a report
-- names, and what audio-history is keyed by.
function SpokenPlaces:NewLoreSound(mapID, areaKey)
	local path, length, pack, fileName, times = self:GetAudioClip(mapID, areaKey)
	if not path then
		return nil
	end

	local label = self:GetAudioLabel(mapID, areaKey)
	-- The place's picture and its frayed edge, for a window that shows one over the words.
	local picture, mask
	if self.Picture then picture, mask = self:Picture(mapID, areaKey) end
	-- The words are in the Text Language the player picked, whatever the voice: French words under
	-- an English voice. The pack's own language only where the Text Language has no such entry.
	local language, entry
	for _, code in ipairs({ self:GetLanguage(), pack.language or "enUS" }) do
		local data = self.CaptionLore and self.CaptionLore[code]
		local entries = data and (areaKey and data.subzones or data.zones)
		local found = entries and entries[mapID]
		if areaKey then found = found and found[areaKey] end
		if found and found.full then
			language, entry = code, found
			break
		end
	end
	language = language or pack.language or "enUS"
	-- Captions set a font file, which has none of the font object's fallbacks: lore in a script
	-- the client's file cannot draw names the file that can. Otherwise the window's own is kept.
	local font = self.FontFor and self:FontFor(GameFontNormal, language)
	if font == GameFontNormal:GetFont() then font = nil end
	-- An area is headed by the zone Azeroth's Compendium lists it in: Razorfen Downs by The Barrens,
	-- where its entrance is, and Strahnbrad by Alterac Mountains, their stories kept under Thousand
	-- Needles and Hillsbrad Foothills.
	local zone = areaKey and (self.AreaZone and self:AreaZone(mapID, areaKey) or mapID)
	return {
		key = areaKey and ("s:" .. mapID .. ":" .. areaKey) or ("z:" .. mapID),
		path = path,
		length = length,
		fileName = fileName,
		pack = pack,
		mapID = mapID,
		areaKey = areaKey,
		present = {
			-- An area under its zone; anything else under the place above it.
			header = areaKey and (self:GetMapName(zone) or label) or self:GetMapName(self:PlaceAbove(mapID)),
			label = label,
			transcript = entry and entry.full,
			-- Timed to the recording's own words, so not under another language's.
			timings = entry and language == (pack.language or "enUS") and times or nil,
			font = font,
			bullet = "zone",
			portrait = self:Portrait(mapID),
			picture = picture and { file = picture, mask = mask } or nil,
			actions = ACTIONS,
		},
		-- Recorded when the clip starts rather than when it is queued, so that
		-- every route to a clip counts and a backlog that overflows does not spend
		-- areas on silence. Include Places Found Before, the check on a discovery and a
		-- dungeon's once-per-character story all read it.
		startCallback = function(item)
			if SpokenPlaces.MarkHeard then
				SpokenPlaces:MarkHeard(item.mapID, item.areaKey)
			end
		end,
	}
end

-- Appends a clip that waits its turn: autoplay's, or one the player `asked` for with a shift-click.
-- Returns whether it was admitted; the player refuses duplicates and silence of its own accord.
function SpokenPlaces:EnqueueLore(item, asked)
	local source = Source()
	if not source or not item then
		return false
	end
	return source:Enqueue(item, asked) ~= nil
end

--- A story behind what is playing, as a shift-click on its row in Azeroth's Compendium asks: once,
--- where a pack has it and it is not locked. Returns whether it was queued.
function SpokenPlaces:QueueLore(mapID, areaKey)
	if not self:IsVoiceEnabled() or (self.IsLocked and self:IsLocked(mapID, areaKey)) then
		return false
	end
	-- Asked for, so read in a battleground too.
	return self:EnqueueLore(self:NewLoreSound(mapID, areaKey), true)
end

function SpokenPlaces:HasAudio(mapID, areaKey)
	return self:GetAudioClip(mapID, areaKey) ~= nil
end

-- Why there is no clip, phrased for the player. Distinguishes "you have no sound
-- pack" from "your pack does not cover this line": the first is a download, the
-- second is nothing they can do, and telling them apart is the whole point of
-- saying anything at all.
function SpokenPlaces:DescribeMissingAudio()
	if #self:GetAudioPacks() == 0 then
		return "no voice pack installed -- get Spoken Audio: Places and Bosses to hear the lore read aloud"
	end
	return "no narration for this entry in the installed voice pack yet"
end

--------------------------------------------------------------------------------
-- Playback
--------------------------------------------------------------------------------

-- The head of the player's queue if it is one of ours, else nil.
local function OurHead()
	local Spoken = _G.Spoken
	if not SpokenPlaces.source or not Spoken then
		return nil
	end
	local head = Spoken:GetCurrent()
	if head and head.source == SpokenPlaces.source then
		return head
	end
	return nil
end

-- Playing, as opposed to merely queued. An entry can sit at the head of the queue
-- unstarted while a gate holds it -- waiting out a pull, say -- and a button
-- reading "Stop" over an entry that has made no sound would stop a queue instead
-- of a clip. The player's IsPlaying is the liveness test, not presence at the head.
function SpokenPlaces:IsPlayingLore(mapID, areaKey)
	local head = OurHead()
	if not head or not _G.Spoken:IsPlaying() then
		return false
	end
	if mapID == nil then
		return true
	end
	return head.mapID == mapID and head.areaKey == areaKey
end

--- This story at the head of the queue, whether speaking or paused: what the Play button
--- pauses and resumes rather than starting again.
--- This story's line in the queue, nearest the head, or nil: what a page's Play stops or replays.
function SpokenPlaces:LoreClip(mapID, areaKey)
	local Spoken = _G.Spoken
	if not self.source or not (Spoken and Spoken.GetQueue) then return nil end
	for _, clip in ipairs(Spoken:GetQueue()) do
		if clip.source == self.source and clip.mapID == mapID and clip.areaKey == areaKey then return clip end
	end
end

function SpokenPlaces:IsLoreAtHead(mapID, areaKey)
	local head = OurHead()
	return head ~= nil and head.mapID == mapID and head.areaKey == areaKey
end

function SpokenPlaces:IsPaused()
	local head = OurHead()
	return head ~= nil and _G.Spoken:IsPaused()
end

-- What the floating controls are controlling: mapID, areaKey, isPaused. Nil when
-- nothing of ours is playing or paused, which is also what hides the controls.
function SpokenPlaces:GetNowPlaying()
	-- Deliberately not "whatever is at the head". An entry held by a gate sits
	-- there making no sound, and controls offering Pause over silence would be
	-- lying; the window says why a held line waits. So: playing, or paused.
	local Spoken = _G.Spoken
	local head = Spoken and Spoken:GetNowPlaying()
	if not head or head.source ~= self.source then
		return nil, nil, false
	end
	return head.mapID, head.areaKey, Spoken:IsPaused()
end

-- How many of our entries are waiting behind the one playing. Drives the Next
-- button. Ours only: a quest line queued behind a discovery is not lore waiting.
function SpokenPlaces:QueueLength()
	local Spoken = _G.Spoken
	if not self.source or not Spoken then
		return 0
	end
	local waiting = 0
	for index, clip in ipairs(Spoken:GetQueue()) do
		local speaking = index == 1 and Spoken:IsPlaying()
		if clip.source == self.source and not speaking then
			waiting = waiting + 1
		end
	end
	return waiting
end

-- A readable name for an entry, for the controls to label what is playing.
function SpokenPlaces:GetAudioLabel(mapID, areaKey)
	if not mapID then
		return ""
	end
	if areaKey then
		local zoneTable = self.Subzones[mapID]
		local entry = zoneTable and zoneTable[areaKey]
		return (entry and entry.name) or areaKey
	end
	return self:GetMapName(mapID) or tostring(mapID)
end

-- The player asking for silence, as opposed to playback being reset on the way to
-- starting something else. Stop has to mean stop, not skip to the next discovered
-- area -- and it means *lore*: another Spoken addon's clips are left alone.
function SpokenPlaces:StopLore()
	local source = SpokenPlaces.source
	if source then
		source:StopAll()
	end
end

-- Pause is the player's, not this addon's: pausing lore pauses whatever is speaking.
function SpokenPlaces:PauseLore()
	return _G.Spoken and _G.Spoken:Pause() or false
end

function SpokenPlaces:ResumeLore()
	return _G.Spoken and _G.Spoken:Resume() or false
end

-- Plays this entry now, ahead of anything waiting. Pressing Play has always meant
-- now in SpokenPlaces, so this front-inserts rather than appending; producers such as
-- autoplay append instead.
function SpokenPlaces:PlayLore(mapID, areaKey)
	if not self:IsVoiceEnabled() then
		SpokenPlaces:NotifyAudioChanged()
		return false
	end

	local source = Source()
	if not source then
		return false
	end

	local item = self:NewLoreSound(mapID, areaKey)
	if not item then
		-- Said out loud, because this is the case players used to experience as
		-- "the narration is about the wrong zone". Autoplay never reaches here --
		-- it refuses to queue an entry with no clip -- so this only speaks when
		-- somebody asked for this line by clicking Play or typing /spp play.
		self:Print("|cffffcc00%s|r", self:DescribeMissingAudio())
		SpokenPlaces:NotifyAudioChanged()
		return false
	end

	local playing, reason = source:PlayNow(item)
	if not playing and reason then
		self:Print("|cffffcc00cannot play lore: %s|r", reason)
	end
	return playing and true or false
end

--------------------------------------------------------------------------------
-- Why nothing here stops playback on its own
--------------------------------------------------------------------------------
--
-- Narration only stops when the player stops it, or when another clip starts.
-- Closing the map, navigating it, walking into another zone and hiding the lore
-- window all leave it running.
--
-- The alternative -- stopping when the entry scrolls out of view -- reads well as
-- a rule and is wrong in practice: the intended use is to start a zone's lore and
-- then close the map and walk, which that rule would cut off immediately. The
-- button always shows the state of the entry in front of it, so stopping is never
-- more than one click away.
