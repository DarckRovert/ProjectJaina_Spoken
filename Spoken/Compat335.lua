--[[****************************************************************************
  * Spoken - Compat335.lua                                                     *
  * Capa de compatibilidad y polyfills para el cliente TuWoW (WoW 3.3.5a).     *
  * Provee APIs de C_Timer, C_AddOns, C_QuestLog, C_GossipInfo, C_Map y         *
  * metodos de Frame/Texture modernos (SetColorTexture, SetShown,              *
  * BackdropTemplate) sobre el motor WotLK 3.3.5a y ServerSystems/ForeverUI.   *
  ****************************************************************************]]

local _G = getfenv(0)

if not _G.GetCurrentRegion then
	_G.GetCurrentRegion = function() return 3 end -- 3 = EU
end
if not _G.GetCurrentRegionName then
	_G.GetCurrentRegionName = function() return "EU" end
end

-- Polyfill global de securecallfunction para WoW 3.3.5a (usado por CallbackHandler-1.0)
if not _G.securecallfunction then
	_G.securecallfunction = _G.securecall or function(func, ...) return func(...) end
end

-- Constante global QUESTS_DISPLAYED para WoW 3.3.5a
if not _G.QUESTS_DISPLAYED then
	_G.QUESTS_DISPLAYED = _G.QUESTLOG_QUESTS_DISPLAYED or 6
end

-- Creacion nativa en C de GameFontHighlightHuge para 3.3.5a (sin tocar metatablas)
if not _G.GameFontHighlightHuge and CreateFont then
	local f = CreateFont("GameFontHighlightHuge")
	local base = _G.GameFontNormalHuge or _G.GameFontNormalLarge or _G.GameFontHighlightLarge or _G.GameFontNormal
	if base and f.CopyFontObject then
		f:CopyFontObject(base)
	end
	if f.SetTextColor then
		f:SetTextColor(1, 1, 1)
	end
	_G.GameFontHighlightHuge = f
end

-- Asignaciones de teclas para 3.3.5a
_G.BINDING_HEADER_SPOKEN = "Spoken"
_G.BINDING_NAME_SPOKEN_PLAYPAUSE = "Reproducir / Pausar"
_G.BINDING_NAME_SPOKEN_SKIP = "Saltar Diálogo"
_G.BINDING_NAME_SPOKEN_STOP = "Detener Narración"
_G.BINDING_NAME_SPOKEN_COMPENDIUM = "Abrir Compendio de Azeroth"

-- Polyfill global de GetQuestID para WoW 3.3.5a con soporte de títulos traducidos (Questie DB)
do
	local titleToQuestIDCache = nil
	local questIDToTitleCache = {}
	_G.TuWoW_QuestIDToTitle = questIDToTitleCache

	local function PopulateFromQuestieL10n()
		if QuestieLoader and QuestieLoader.ImportModule then
			local ok, l10n = pcall(QuestieLoader.ImportModule, QuestieLoader, "l10n")
			if ok and l10n and l10n.questLookup then
				local loc = (GetLocale and GetLocale()) or "esES"
				local dicts = { l10n.questLookup[loc], l10n.questLookup["esES"], l10n.questLookup["esMX"], l10n.questLookup["enUS"] }
				for _, dict in ipairs(dicts) do
					if type(dict) == "table" then
						for qid, qdata in pairs(dict) do
							if type(qdata) == "table" and qdata[1] and qdata[1] ~= "" then
								titleToQuestIDCache[qdata[1]] = qid
								if not questIDToTitleCache[qid] then
									questIDToTitleCache[qid] = qdata[1]
								end
							end
						end
					end
				end
			end
		end
	end

	local function PopulateFromQuestieDB()
		if QuestieLoader and QuestieLoader.ImportModule then
			local okDB, db = pcall(QuestieLoader.ImportModule, QuestieLoader, "QuestieDB")
			if okDB and db and db.QueryQuestSingle and db.QuestPointers then
				for qid in pairs(db.QuestPointers) do
					local name = db.QueryQuestSingle(qid, "name")
					if name and name ~= "" then
						if not titleToQuestIDCache[name] then
							titleToQuestIDCache[name] = qid
						end
						if not questIDToTitleCache[qid] then
							questIDToTitleCache[qid] = name
						end
					end
				end
			end
		end
	end

	local function BuildQuestieTitleCache()
		if titleToQuestIDCache and next(titleToQuestIDCache) then
			return titleToQuestIDCache
		end
		titleToQuestIDCache = titleToQuestIDCache or {}
		PopulateFromQuestieL10n()
		if not next(titleToQuestIDCache) then
			PopulateFromQuestieDB()
		end
		_G.TuWoW_QuestTitleToID = titleToQuestIDCache
		return titleToQuestIDCache
	end

	_G.TuWoW_BuildQuestieTitleCache = BuildQuestieTitleCache

	local function HookQuestieCleanup()
		if QuestieLoader and QuestieLoader.ImportModule then
			local okClean, cleanup = pcall(QuestieLoader.ImportModule, QuestieLoader, "Cleanup")
			if okClean and cleanup and cleanup.Run and not cleanup._spokenHooked then
				cleanup._spokenHooked = true
				local origRun = cleanup.Run
				cleanup.Run = function(self)
					pcall(BuildQuestieTitleCache)
					return origRun(self)
				end
			end
		end
	end

	-- Intentar poblar inmediatamente al cargar el archivo (mientras l10n.questLookup existe antes de cleanup)
	pcall(BuildQuestieTitleCache)
	pcall(HookQuestieCleanup)

	-- Si Questie carga después de Spoken, enganchar su Cleanup apenas termine de cargar
	local qWatch = CreateFrame and CreateFrame("Frame")
	if qWatch then
		qWatch:RegisterEvent("ADDON_LOADED")
		qWatch:SetScript("OnEvent", function(self, _, addonName)
			if addonName == "Questie" then
				pcall(BuildQuestieTitleCache)
				pcall(HookQuestieCleanup)
				self:UnregisterEvent("ADDON_LOADED")
			end
		end)
	end

	_G.GetQuestID = function()
		-- 1. Si QuestLog o QuestLogDetail estan visibles, obtener de la seleccion activa
		if (QuestLogDetailFrame and QuestLogDetailFrame:IsVisible()) or (QuestLogFrame and QuestLogFrame:IsVisible()) then
			local index = GetQuestLogSelection and GetQuestLogSelection()
			if index and index > 0 then
				local link = GetQuestLink and GetQuestLink(index)
				if link then
					local id = link:match("quest:(%d+)")
					if id then return tonumber(id) end
				end
				local _, _, _, _, _, _, _, _, qid = GetQuestLogTitle(index)
				if qid and qid > 0 then return qid end
			end
		end

		-- 2. Si hay un titulo activo en pantalla (GetTitleText)
		local title = GetTitleText and GetTitleText()
		if title and title ~= "" then
			-- A. Buscar en el QuestLog del jugador por si ya esta aceptada
			if GetNumQuestLogEntries and GetQuestLogTitle then
				for i = 1, GetNumQuestLogEntries() do
					local qTitle, _, _, _, isHeader, _, _, _, qID = GetQuestLogTitle(i)
					if not isHeader and qTitle == title then
						if qID and qID > 0 then return qID end
						local link = GetQuestLink and GetQuestLink(i)
						if link then
							local id = link:match("quest:(%d+)")
							if id then return tonumber(id) end
						end
					end
				end
			end

			-- B. Buscar en la base de datos de traducciones de Questie en 3.3.5a
			local cache = BuildQuestieTitleCache()
			if cache and cache[title] then
				return cache[title]
			end

			-- C. Fallback directo a los modulos de voz de VoiceOver (Spoken_Quests)
			local vo = _G.VoiceOver
			if vo and vo.DataModules and vo.DataModules.GetQuestID then
				local npcName = (vo.Utils and vo.Utils.GetNPCName and vo.Utils:GetNPCName()) or (UnitName and UnitName("npc")) or ""
				local qText = (GetQuestText and GetQuestText()) or ""
				local pText = (GetProgressText and GetProgressText()) or ""
				local rText = (GetRewardText and GetRewardText()) or ""
				local id = (qText ~= "" and vo.DataModules:GetQuestID("accept", title, npcName, qText))
					or (rText ~= "" and vo.DataModules:GetQuestID("complete", title, npcName, rText))
					or (pText ~= "" and vo.DataModules:GetQuestID("progress", title, npcName, pText))
				if type(id) == "number" and id > 0 then
					if cache then cache[title] = id end
					questIDToTitleCache[id] = title
					return id
				end
			end
		end

		-- 3. Retornar 0 (permite fallbacks internos de Spoken)
		return 0
	end
end

local type, pairs, ipairs, select, tonumber, tostring, pcall = type, pairs, ipairs, select, tonumber, tostring, pcall
local floor, max, min = math.floor, math.max, math.min
local find, sub, lower, match, format = string.find, string.sub, string.lower, string.match, string.format

local WHITE_TEX = "Interface\\Buttons\\WHITE8X8"

---------------------------------------------------------------------------
-- 1. Helper Vector2D
---------------------------------------------------------------------------
local Vector2DMixin = {}
Vector2DMixin.__index = Vector2DMixin

function Vector2DMixin:GetXY()
	return self.x, self.y
end

function Vector2DMixin:SetXY(x, y)
	self.x, self.y = x, y
end

if not _G.CreateVector2D then
	function _G.CreateVector2D(x, y)
		return setmetatable({ x = x or 0, y = y or 0 }, Vector2DMixin)
	end
end

---------------------------------------------------------------------------
-- 2. Polyfills de Metatablas de UI (Frame, Texture, FontString, Button...)
---------------------------------------------------------------------------
local FILE_DATA_IDS = {
	[130763] = "Interface\\Buttons\\UI-DialogBox-Button-Up",
	[130761] = "Interface\\Buttons\\UI-DialogBox-Button-Down",
	[130762] = "Interface\\Buttons\\UI-DialogBox-Button-Highlight",
	[136477] = "Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight",
	[136430] = "Interface\\Minimap\\MiniMap-TrackingBorder",
	[136467] = "Interface\\Minimap\\UI-Minimap-Background",
	[131080] = "Interface\\DialogFrame\\UI-DialogBox-Header",
	[137057] = "Interface\\Tooltips\\UI-Tooltip-Border",
	[137056] = "Interface\\Tooltips\\UI-Tooltip-Background",
	[130843] = "Interface\\Buttons\\UI-RadioButton",
	[130755] = "Interface\\Buttons\\UI-CheckBox-Up",
	[130751] = "Interface\\Buttons\\UI-CheckBox-Check",
	[130753] = "Interface\\Buttons\\UI-CheckBox-Highlight",
	[130939] = "Interface\\ChatFrame\\ChatFrameColorSwatch",
	[188523] = "Tileset\\Generic\\Checkers",
	[136810] = "Interface\\QuestFrame\\UI-QuestTitleHighlight",
	[130940] = "Interface\\ChatFrame\\ChatFrameExpandArrow",
	[136580] = "Interface\\PaperDollInfoFrame\\UI-Character-Tab-Highlight",
	[130838] = "Interface\\Buttons\\UI-PlusButton-UP",
	[130836] = "Interface\\Buttons\\UI-PlusButton-DOWN",
	[130821] = "Interface\\Buttons\\UI-MinusButton-UP",
	[130820] = "Interface\\Buttons\\UI-MinusButton-DOWN",
	[251966] = "Interface\\PaperDollInfoFrame\\UI-GearManager-Title-Background",
	[251963] = "Interface\\PaperDollInfoFrame\\UI-GearManager-Border",
}

local function patchRegionMeta(obj)
	if not obj then return end
	local mt = getmetatable(obj)
	local idx = mt and mt.__index
	if type(idx) ~= "table" then return end

	if not idx.SetShown then
		function idx:SetShown(shown)
			if shown then self:Show() else self:Hide() end
		end
	end

	if not idx.SetEnabled then
		function idx:SetEnabled(enabled)
			if enabled ~= false then
				if self.Enable then self:Enable() end
			else
				if self.Disable then self:Disable() end
			end
		end
	end

	if not idx.SetResizeBounds and idx.SetMinResize then
		function idx:SetResizeBounds(minW, minH, maxW, maxH)
			if minW and minH then self:SetMinResize(minW, minH) end
			if maxW and maxH and self.SetMaxResize then self:SetMaxResize(maxW, maxH) end
		end
	end

	if not idx.SetFixedFrameStrata then
		idx.SetFixedFrameStrata = function() end
	end
	if not idx.SetFixedFrameLevel then
		idx.SetFixedFrameLevel = function() end
	end
	if not idx.SetPropagateKeyboardInput then
		idx.SetPropagateKeyboardInput = function() end
	end
	if not idx.SetPassThroughButtons then
		idx.SetPassThroughButtons = function() end
	end
	if not idx.SetFlattensRenderLayers then
		idx.SetFlattensRenderLayers = function() end
	end
	if not idx.SetClipsChildren then
		idx.SetClipsChildren = function() end
	end
end

local function patchTextureMeta(tex)
	if not tex then return end
	local mt = getmetatable(tex)
	local idx = mt and mt.__index
	if type(idx) ~= "table" then return end

	if not idx.SetShown then
		function idx:SetShown(shown)
			if shown then self:Show() else self:Hide() end
		end
	end

	if not idx.SetColorTexture then
		function idx:SetColorTexture(r, g, b, a)
			self:SetTexture(r or 0, g or 0, b or 0, a ~= nil and a or 1)
		end
	end

	if not idx.SetAtlas then
		function idx:SetAtlas(name, useAtlasSize)
			if type(name) == "string" and _G.UIAtlas and _G.UIAtlas.data then
				local e = _G.UIAtlas.data[name] or _G.UIAtlas.data[lower(name)]
				if e then
					self:SetTexture(e[1])
					self:SetTexCoord(e[2], e[3], e[4], e[5])
					if useAtlasSize then
						self:SetSize(e[6], e[7])
					end
					return true
				end
			end
			return false
		end
	end
end

do
	local dummyFrame = CreateFrame("Frame")
	local dummyBtn = CreateFrame("Button")
	local dummyCheck = CreateFrame("CheckButton")
	local dummySlider = CreateFrame("Slider")
	local dummyStatus = CreateFrame("StatusBar")
	local dummyScroll = CreateFrame("ScrollFrame")
	local dummyEdit = CreateFrame("EditBox")
	if dummyEdit.SetAutoFocus then dummyEdit:SetAutoFocus(false) end
	if dummyEdit.ClearFocus then dummyEdit:ClearFocus() end
	local dummyTex = dummyFrame:CreateTexture()
	local dummyFS = dummyFrame:CreateFontString()

	for _, f in ipairs({ dummyFrame, dummyBtn, dummyCheck, dummySlider, dummyStatus, dummyScroll, dummyEdit }) do
		if f and f.Hide then f:Hide() end
		if f and f.EnableMouse then f:EnableMouse(false) end
	end

	patchRegionMeta(dummyFrame)
	patchRegionMeta(dummyBtn)
	patchRegionMeta(dummyCheck)
	patchRegionMeta(dummySlider)
	patchRegionMeta(dummyStatus)
	patchRegionMeta(dummyScroll)
	patchRegionMeta(dummyEdit)
	patchRegionMeta(GameTooltip)
	patchTextureMeta(dummyTex)
	patchRegionMeta(dummyFS)

	-- Animation & AnimationGroup polyfills
	if dummyFrame.CreateAnimationGroup then
		local okGroup, dummyGroup = pcall(dummyFrame.CreateAnimationGroup, dummyFrame)
		if okGroup and dummyGroup then
			local gMT = getmetatable(dummyGroup)
			local gIdx = gMT and gMT.__index
			if type(gIdx) == "table" and not gIdx.SetToFinalAlpha then
				gIdx.SetToFinalAlpha = function() end
			end
			local okAnim, dummyAnim = pcall(dummyGroup.CreateAnimation, dummyGroup, "Alpha")
			if okAnim and dummyAnim then
				local aMT = getmetatable(dummyAnim)
				local aIdx = aMT and aMT.__index
				if type(aIdx) == "table" then
					if not aIdx.SetFromAlpha then
						function aIdx:SetFromAlpha(a)
							self._fromAlpha = a
							if self._toAlpha and self.SetChange then
								self:SetChange(self._toAlpha - a)
							end
						end
					end
					if not aIdx.SetToAlpha then
						function aIdx:SetToAlpha(a)
							self._toAlpha = a
							local from = self._fromAlpha or 1
							if self.SetChange then
								self:SetChange(a - from)
							end
						end
					end
					if not aIdx.SetStartDelay then
						function aIdx:SetStartDelay() end
					end
				end
			end
		end
	end

	-- FontString polyfills
	local fsMT = getmetatable(dummyFS)
	local fsIdx = fsMT and fsMT.__index
	if type(fsIdx) == "table" then
		if not fsIdx.SetMaxLines then
			function fsIdx:SetMaxLines() end
		end
		if not fsIdx.GetNumLines then
			function fsIdx:GetNumLines()
				local text = self:GetText()
				if not text or text == "" then return 0 end
				local h = self:GetStringHeight() or 0
				local _, fontHeight = self:GetFont()
				if fontHeight and fontHeight > 0 then
					return math.max(1, math.floor((h / fontHeight) + 0.5))
				end
				return 1
			end
		end
	end

	-- Button polyfills
	local btnMT = getmetatable(dummyBtn)
	local btnIdx = btnMT and btnMT.__index
	if type(btnIdx) == "table" then
		if not btnIdx.SetEnabled then
			function btnIdx:SetEnabled(enabled)
				if enabled ~= false then
					if self.Enable then self:Enable() end
				else
					if self.Disable then self:Disable() end
				end
			end
		end
	end
end

-- Sanitizar templates en CreateFrame para 3.3.5a sin capturar errores de pcall(CreateFrame, ...)
do
	local origCreateFrame = CreateFrame
	local unsupported = {
		["backdroptemplate"] = true,
		["dialogborderopaquetemplate"] = true,
		["dialogborderdarktemplate"] = true,
		["dialogbordertranslucenttemplate"] = true,
		["tooltipborderedframetemplate"] = true,
		["uislidertemplate"] = true,
	}

	local sliderBackdrop = {
		bgFile = "Interface\\Buttons\\UI-SliderBar-Background",
		edgeFile = "Interface\\Buttons\\UI-SliderBar-Border",
		tile = true, tileSize = 8, edgeSize = 8,
		insets = { left = 3, right = 3, top = 6, bottom = 6 },
	}

	local function sanitizeTemplate(template)
		if type(template) ~= "string" or template == "" then return nil, false, false end
		local kept = {}
		local isUISlider = false
		local isSearchBox = false
		for tmpl in template:gmatch("[^,]+") do
			local clean = tmpl:match("^%s*(.-)%s*$")
			if clean and clean ~= "" then
				local low = clean:lower()
				if low == "uislidertemplate" then
					isUISlider = true
				elseif low == "searchboxtemplate" then
					isSearchBox = true
					table.insert(kept, "InputBoxTemplate")
				elseif not unsupported[low] then
					table.insert(kept, clean)
				end
			end
		end
		if #kept == 0 then return nil, isUISlider, isSearchBox end
		return table.concat(kept, ", "), isUISlider, isSearchBox
	end

	function CreateFrame(frameType, name, parent, template, id)
		local cleanTemplate, isUISlider, isSearchBox = sanitizeTemplate(template)
		local f = origCreateFrame(frameType, name, parent, cleanTemplate, id)
		if f then
			if isUISlider then
				if f.SetBackdrop then
					f:SetBackdrop(sliderBackdrop)
				end
				if f.SetThumbTexture then
					f:SetThumbTexture("Interface\\Buttons\\UI-SliderBar-Button-Horizontal")
				end
			end
			if isSearchBox and not f.Instructions and f.CreateFontString then
				local inst = f:CreateFontString(nil, "ARTWORK", "GameFontDisableSmall")
				inst:SetPoint("LEFT", f, "LEFT", 6, 0)
				f.Instructions = inst
				f:HookScript("OnTextChanged", function(self)
					local txt = self:GetText()
					if txt and txt ~= "" then inst:Hide() else inst:Show() end
				end)
			end
			if type(frameType) == "string" and lower(frameType) == "editbox" then
				if f.SetAutoFocus then f:SetAutoFocus(false) end
				if f.ClearFocus then f:ClearFocus() end
			end
		end
		return f
	end
end

---------------------------------------------------------------------------
-- 3. C_Timer (Cola eficiente basada en frame OnUpdate unico)
---------------------------------------------------------------------------
if not _G.C_Timer then
	_G.C_Timer = {}
end

if not _G.C_Timer.After or not _G.C_Timer.NewTicker then
	local timerFrame = CreateFrame("Frame", "SpokenTimerFrame", UIParent)
	timerFrame:SetSize(1, 1)
	timerFrame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", -10, -10)
	timerFrame:Show()
	local timers = {}
	local count = 0

	local TickerProto = {}
	TickerProto.__index = TickerProto
	function TickerProto:Cancel()
		self._cancelled = true
	end
	function TickerProto:IsCancelled()
		return self._cancelled and true or false
	end

	local function onUpdate(_, elapsed)
		if count == 0 then
			timerFrame:SetScript("OnUpdate", nil)
			return
		end
		local now = GetTime()
		local i = 1
		while i <= count do
			local t = timers[i]
			if t._cancelled then
				timers[i] = timers[count]
				timers[count] = nil
				count = count - 1
			elseif now >= t._next then
				if t._iterations then
					t._iterations = t._iterations - 1
					if t._iterations <= 0 then
						t._cancelled = true
					end
				end
				if t._cancelled then
					timers[i] = timers[count]
					timers[count] = nil
					count = count - 1
				else
					t._next = now + t._duration
					i = i + 1
				end
				local ok, err = pcall(t._callback, t)
				if not ok and geterrorhandler then
					geterrorhandler()(err)
				end
			else
				i = i + 1
			end
		end
		if count == 0 then
			timerFrame:SetScript("OnUpdate", nil)
		end
	end

	function _G.C_Timer.NewTicker(duration, callback, iterations)
		duration = max(0.001, tonumber(duration) or 0)
		local t = setmetatable({
			_duration = duration,
			_next = GetTime() + duration,
			_callback = callback,
			_iterations = iterations,
			_cancelled = false,
		}, TickerProto)
		count = count + 1
		timers[count] = t
		if count == 1 then
			timerFrame:SetScript("OnUpdate", onUpdate)
		end
		return t
	end

	function _G.C_Timer.NewTimer(duration, callback)
		return _G.C_Timer.NewTicker(duration, callback, 1)
	end

	function _G.C_Timer.After(duration, callback)
		_G.C_Timer.NewTicker(duration, callback, 1)
	end
end

---------------------------------------------------------------------------
-- 4. C_AddOns (Envoltorio sobre funciones globales 3.3.5a)
---------------------------------------------------------------------------
_G.C_AddOns = _G.C_AddOns or {}

if not _G.C_AddOns.GetAddOnMetadata and GetAddOnMetadata then
	_G.C_AddOns.GetAddOnMetadata = GetAddOnMetadata
end
if not _G.C_AddOns.IsAddOnLoaded and IsAddOnLoaded then
	_G.C_AddOns.IsAddOnLoaded = IsAddOnLoaded
end
if not _G.C_AddOns.LoadAddOn and LoadAddOn then
	_G.C_AddOns.LoadAddOn = LoadAddOn
end
if not _G.C_AddOns.GetAddOnInfo and GetAddOnInfo then
	_G.C_AddOns.GetAddOnInfo = GetAddOnInfo
end
if not _G.C_AddOns.DoesAddOnExist and GetAddOnInfo then
	function _G.C_AddOns.DoesAddOnExist(name)
		local _, _, _, _, reason = GetAddOnInfo(name)
		return reason ~= "MISSING"
	end
end
if not _G.C_AddOns.GetAddOnEnableState and GetAddOnEnableState then
	_G.C_AddOns.GetAddOnEnableState = function(addon, character)
		return GetAddOnEnableState(character, addon)
	end
end

---------------------------------------------------------------------------
-- 5. C_QuestLog (Puente con QuestLog nativo, Questie y ForeverUI en 3.3.5a)
---------------------------------------------------------------------------
_G.C_QuestLog = _G.C_QuestLog or {}

do
	local _completedQuests = {}
	local _lastCompletingQuestID = nil

	local function GetCharCompletedTable()
		local vo = _G.VoiceOver
		if vo and vo.Addon and vo.Addon.db and vo.Addon.db.char then
			vo.Addon.db.char.completedQuests = vo.Addon.db.char.completedQuests or {}
			return vo.Addon.db.char.completedQuests
		end
		return nil
	end

	local function SyncCompletedFromSources()
		if GetQuestsCompleted then
			pcall(GetQuestsCompleted, _completedQuests)
		end
		-- Sincronizar con Questie si está presente
		if _G.Questie and _G.Questie.db and _G.Questie.db.char and type(_G.Questie.db.char.complete) == "table" then
			for qid, done in pairs(_G.Questie.db.char.complete) do
				if done then _completedQuests[qid] = true end
			end
		end
		-- Sincronizar con historial propio del personaje en Spoken_Quests
		local charTbl = GetCharCompletedTable()
		if charTbl then
			for qid, done in pairs(charTbl) do
				if done then _completedQuests[qid] = true end
			end
		end
		-- Sincronizar misiones cuyo diálogo de entrega (complete) ya fue visto y guardado en CompendiumText
		local vo = _G.VoiceOver
		local loc = (GetLocale and GetLocale()) or "esES"
		local kept = vo and vo.Addon and vo.Addon.db and vo.Addon.db.global
			and vo.Addon.db.global.CompendiumText and vo.Addon.db.global.CompendiumText[loc]
		if type(kept) == "table" then
			for qid, entry in pairs(kept) do
				if type(entry) == "table" and entry.complete then
					_completedQuests[qid] = true
					if charTbl then charTbl[qid] = true end
				end
			end
		end
	end

	local function MarkQuestCompleted(qid)
		if type(qid) == "number" and qid > 0 then
			_completedQuests[qid] = true
			local charTbl = GetCharCompletedTable()
			if charTbl then charTbl[qid] = true end
		end
	end

	if _G.GetQuestReward and hooksecurefunc then
		hooksecurefunc("GetQuestReward", function()
			local qid = _lastCompletingQuestID or (_G.GetQuestID and _G.GetQuestID())
			MarkQuestCompleted(qid)
			if QueryQuestsCompleted then pcall(QueryQuestsCompleted) end
			local vo = _G.VoiceOver
			if vo and vo.QuestsTab and vo.QuestsTab.Refresh and vo.QuestsTab.panel and vo.QuestsTab.panel:IsVisible() then
				vo.QuestsTab:Refresh()
			end
		end)
	end

	local qFrame = CreateFrame and CreateFrame("Frame")
	if qFrame then
		qFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
		qFrame:RegisterEvent("QUEST_QUERY_COMPLETE")
		qFrame:RegisterEvent("QUEST_COMPLETE")
		qFrame:RegisterEvent("QUEST_FINISHED")
		qFrame:SetScript("OnEvent", function(_, event)
			if event == "PLAYER_ENTERING_WORLD" then
				SyncCompletedFromSources()
				if QueryQuestsCompleted then pcall(QueryQuestsCompleted) end
			elseif event == "QUEST_COMPLETE" then
				local qid = _G.GetQuestID and _G.GetQuestID()
				if type(qid) == "number" and qid > 0 then
					_lastCompletingQuestID = qid
				end
			elseif event == "QUEST_QUERY_COMPLETE" or event == "QUEST_FINISHED" then
				SyncCompletedFromSources()
				local vo = _G.VoiceOver
				if vo and vo.QuestsTab and vo.QuestsTab.Refresh and vo.QuestsTab.panel and vo.QuestsTab.panel:IsVisible() then
					vo.QuestsTab:Refresh()
				end
			end
		end)
	end

	function _G.C_QuestLog.GetTitleForQuestID(questID)
		if not questID then return nil end
		local numEntries = GetNumQuestLogEntries and GetNumQuestLogEntries() or 0
		for i = 1, numEntries do
			-- En WotLK 3.3.5a GetQuestLogTitle retorna 9 valores:
			-- title, level, questTag, suggestedGroup, isHeader, isCollapsed, isComplete, isDaily, questID
			local title, _, _, _, isHeader, _, _, _, id = GetQuestLogTitle(i)
			if not isHeader and id == questID then
				return title
			end
		end
		if _G.TuWoW_BuildQuestieTitleCache then
			pcall(_G.TuWoW_BuildQuestieTitleCache)
		end
		if _G.TuWoW_QuestIDToTitle and _G.TuWoW_QuestIDToTitle[questID] then
			return _G.TuWoW_QuestIDToTitle[questID]
		end
		if QuestieLoader and QuestieLoader.ImportModule then
			local okDB, db = pcall(QuestieLoader.ImportModule, QuestieLoader, "QuestieDB")
			if okDB and db and db.QueryQuestSingle then
				local okName, name = pcall(db.QueryQuestSingle, questID, "name")
				if okName and type(name) == "string" and name ~= "" then
					if _G.TuWoW_QuestIDToTitle then _G.TuWoW_QuestIDToTitle[questID] = name end
					return name
				end
			end
		end
		return nil
	end

	function _G.C_QuestLog.IsOnQuest(questID)
		if not questID then return false end
		if GetQuestLogIndexByID then
			local idx = GetQuestLogIndexByID(questID)
			if idx and idx > 0 then return true end
		end
		local numEntries = GetNumQuestLogEntries and GetNumQuestLogEntries() or 0
		for i = 1, numEntries do
			local _, _, _, _, isHeader, _, _, _, id = GetQuestLogTitle(i)
			if not isHeader and id == questID then
				return true
			end
		end
		return false
	end

	function _G.C_QuestLog.IsQuestFlaggedCompleted(questID)
		if not questID then return false end
		SyncCompletedFromSources()
		return _completedQuests[questID] == true
	end

	if not _G.IsQuestFlaggedCompleted then
		_G.IsQuestFlaggedCompleted = _G.C_QuestLog.IsQuestFlaggedCompleted
	end

	function _G.C_QuestLog.GetAllCompletedQuestIDs()
		SyncCompletedFromSources()
		local list = {}
		for qid, done in pairs(_completedQuests) do
			if done and type(qid) == "number" then
				list[#list + 1] = qid
			end
		end
		return list
	end
end

---------------------------------------------------------------------------
-- 6. C_GossipInfo
---------------------------------------------------------------------------
_G.C_GossipInfo = _G.C_GossipInfo or {}
if not _G.C_GossipInfo.GetText and GetGossipText then
	_G.C_GossipInfo.GetText = GetGossipText
end
if not _G.C_GossipInfo.GetNumActiveQuests and GetNumGossipActiveQuests then
	_G.C_GossipInfo.GetNumActiveQuests = GetNumGossipActiveQuests
end
if not _G.C_GossipInfo.GetNumAvailableQuests and GetNumGossipAvailableQuests then
	_G.C_GossipInfo.GetNumAvailableQuests = GetNumGossipAvailableQuests
end
if not _G.C_GossipInfo.SelectActiveQuest and SelectGossipActiveQuest then
	_G.C_GossipInfo.SelectActiveQuest = SelectGossipActiveQuest
end
if not _G.C_GossipInfo.SelectAvailableQuest and SelectGossipAvailableQuest then
	_G.C_GossipInfo.SelectAvailableQuest = SelectGossipAvailableQuest
end
if not _G.C_GossipInfo.SelectOption and SelectGossipOption then
	_G.C_GossipInfo.SelectOption = SelectGossipOption
end

---------------------------------------------------------------------------
-- 7. Funciones de Grupo y Chat
---------------------------------------------------------------------------
_G.C_ChatInfo = _G.C_ChatInfo or {}
if not _G.C_ChatInfo.SendAddonMessage and SendAddonMessage then
	function _G.C_ChatInfo.SendAddonMessage(prefix, message, chatType, target)
		SendAddonMessage(prefix, message, chatType, target)
		return 0
	end
end
if not _G.C_ChatInfo.RegisterAddonMessagePrefix then
	function _G.C_ChatInfo.RegisterAddonMessagePrefix()
		return true
	end
end

if not _G.IsInRaid then
	function _G.IsInRaid()
		return (GetNumRaidMembers and GetNumRaidMembers() or 0) > 0
	end
end

if not _G.IsInGroup then
	function _G.IsInGroup()
		return IsInRaid() or (GetNumPartyMembers and GetNumPartyMembers() or 0) > 0
	end
end

if not _G.GetNumSubgroupMembers then
	function _G.GetNumSubgroupMembers()
		return GetNumPartyMembers and GetNumPartyMembers() or 0
	end
end

if not _G.GetNumGroupMembers then
	function _G.GetNumGroupMembers()
		if IsInRaid() then
			return GetNumRaidMembers and GetNumRaidMembers() or 0
		end
		local p = GetNumPartyMembers and GetNumPartyMembers() or 0
		return p > 0 and (p + 1) or 0
	end
end

if not _G.MouseIsOver then
	function _G.MouseIsOver(frame, topOffset, bottomOffset, leftOffset, rightOffset)
		if not frame or not frame.IsMouseOver then return false end
		return frame:IsMouseOver(topOffset, bottomOffset, leftOffset, rightOffset)
	end
end

if not _G.CreateColor then
	function _G.CreateColor(r, g, b, a)
		return {
			r = r or 0, g = g or 0, b = b or 0, a = a ~= nil and a or 1,
			GetRGBA = function(self) return self.r, self.g, self.b, self.a end,
			GetRGB = function(self) return self.r, self.g, self.b end,
		}
	end
end

---------------------------------------------------------------------------
-- 8. SOUNDKIT Table Polyfill para 3.3.5a
---------------------------------------------------------------------------
if not _G.SOUNDKIT then
	_G.SOUNDKIT = setmetatable({
		IG_QUEST_LOG_CLOSE    = "igQuestLogClose",
		IG_QUEST_LOG_OPEN     = "igQuestLogOpen",
		IG_MAINMENU_CLOSE     = "igMainMenuClose",
		IG_MAINMENU_OPEN      = "igMainMenuOpen",
		U_CHAT_SCROLL_BUTTON  = "igChatScrollDown",
	}, {
		__index = function(t, k)
			if type(k) == "string" then
				local parts = { strsplit("_", k) }
				local out = ""
				for i, p in ipairs(parts) do
					if i == 1 then
						out = out .. p:lower()
					else
						out = out .. p:sub(1,1):upper() .. p:sub(2):lower()
					end
				end
				rawset(t, k, out)
				return out
			end
			return "igMainMenuOption"
		end
	})
end

---------------------------------------------------------------------------
-- 9. Settings API Shim para 3.3.5a (Mapeo a InterfaceOptions)
---------------------------------------------------------------------------
if not _G.Settings then
	_G.Settings = {}
	local categories = {}

	function _G.Settings.RegisterCanvasLayoutCategory(frame, name)
		frame.name = name
		frame.categoryID = name
		frame.GetID = function(self) return self.name end
		if InterfaceOptions_AddCategory then
			InterfaceOptions_AddCategory(frame)
		end
		categories[name] = frame
		return frame
	end

	function _G.Settings.RegisterAddOnCategory(category)
		return category
	end

	function _G.Settings.RegisterCanvasLayoutSubcategory(parentCategory, frame, name)
		frame.name = name
		local parentName = (type(parentCategory) == "table" and parentCategory.name) or tostring(parentCategory)
		frame.parent = parentName
		frame.categoryID = name
		frame.GetID = function(self) return self.name end
		if InterfaceOptions_AddCategory then
			InterfaceOptions_AddCategory(frame)
		end
		categories[name] = frame
		return frame
	end

	function _G.Settings.OpenToCategory(categoryOrID)
		local frame
		if type(categoryOrID) == "table" then
			frame = categoryOrID
		elseif type(categoryOrID) == "string" then
			frame = categories[categoryOrID] or _G[categoryOrID]
		end
		if frame and InterfaceOptionsFrame_OpenToCategory then
			if frame.parent and categories[frame.parent] then
				InterfaceOptionsFrame_OpenToCategory(categories[frame.parent])
			end
			InterfaceOptionsFrame_OpenToCategory(frame)
			InterfaceOptionsFrame_OpenToCategory(frame)
			return true
		end
		return false
	end
end

---------------------------------------------------------------------------
-- 10. Region Functions (GetCurrentRegion / GetCurrentRegionName)
---------------------------------------------------------------------------
if not _G.GetCurrentRegion then
	_G.GetCurrentRegion = function() return 3 end -- 3 = EU
end
if not _G.GetCurrentRegionName then
	_G.GetCurrentRegionName = function() return "EU" end
end

---------------------------------------------------------------------------
-- 11. ScriptErrorsFrame cursorOffset Fix para 3.3.5a
---------------------------------------------------------------------------
do
	local errBox = _G.ScriptErrorsFrameScrollFrameText
	if errBox then
		errBox.cursorOffset = errBox.cursorOffset or 0
	end

	local orig_ScrollingEdit_OnTextChanged = _G.ScrollingEdit_OnTextChanged
	if orig_ScrollingEdit_OnTextChanged then
		_G.ScrollingEdit_OnTextChanged = function(self, scrollFrame)
			if self and self.cursorOffset == nil then
				self.cursorOffset = 0
			end
			return orig_ScrollingEdit_OnTextChanged(self, scrollFrame)
		end
	end

	local orig_ScrollingEdit_OnUpdate = _G.ScrollingEdit_OnUpdate
	if orig_ScrollingEdit_OnUpdate then
		_G.ScrollingEdit_OnUpdate = function(self, elapsed, scrollFrame)
			if self and self.cursorOffset == nil then
				self.cursorOffset = 0
			end
			return orig_ScrollingEdit_OnUpdate(self, elapsed, scrollFrame)
		end
	end

	-- Evitar nil en ScriptErrorsFrame.locals cuando Blizzard_DebugTools formatea un error
	if _G.ScriptErrorsFrame_Update then
		local orig_SEF_Update = _G.ScriptErrorsFrame_Update
		_G.ScriptErrorsFrame_Update = function(...)
			local sef = _G.ScriptErrorsFrame
			if sef and sef.locals and sef.index and sef.locals[sef.index] == nil then
				sef.locals[sef.index] = "none"
			end
			return orig_SEF_Update(...)
		end
	end
end

---------------------------------------------------------------------------
-- 12. C_Container Polyfill para 3.3.5a
---------------------------------------------------------------------------
if not _G.C_Container then
	_G.C_Container = {
		GetContainerNumSlots = function(bag)
			return (GetContainerNumSlots and GetContainerNumSlots(bag)) or 0
		end,
		GetContainerItemInfo = function(bag, slot)
			if not GetContainerItemInfo then return nil end
			local texture, itemCount, locked, quality, readable, lootable, link = GetContainerItemInfo(bag, slot)
			if not texture and not link then return nil end
			return {
				iconFileID = texture,
				hyperlink = link,
				hasLoot = lootable,
				isLocked = locked,
				stackCount = itemCount,
				quality = quality,
			}
		end,
		GetContainerItemQuestInfo = function(bag, slot)
			if not GetContainerItemQuestInfo then return nil end
			local isQuestItem, questId, isActive = GetContainerItemQuestInfo(bag, slot)
			return {
				isQuestItem = isQuestItem,
				questID = questId,
				isActive = isActive,
			}
		end,
		UseContainerItem = function(bag, slot)
			if UseContainerItem then
				UseContainerItem(bag, slot)
			end
		end,
		GetContainerItemID = function(bag, slot)
			local link = GetContainerItemLink and GetContainerItemLink(bag, slot)
			if link then
				local id = tonumber(link:match("item:(%d+)"))
				return id
			end
			return nil
		end,
	}
end

---------------------------------------------------------------------------
-- 13. C_Map & C_MapExplorationInfo Polyfills para 3.3.5a (uiMapID <-> areaID)
---------------------------------------------------------------------------
do
	local uiMapToArea335 = {
		[1411] = 5,   [1412] = 10,  [1413] = 12,  [1414] = 14,  [1415] = 15,
		[1416] = 16,  [1417] = 17,  [1418] = 18,  [1419] = 20,  [1420] = 21,
		[1421] = 22,  [1422] = 23,  [1423] = 24,  [1424] = 25,  [1425] = 27,
		[1426] = 28,  [1427] = 29,  [1428] = 30,  [1429] = 31,  [1430] = 33,
		[1431] = 35,  [1432] = 36,  [1433] = 37,  [1434] = 38,  [1435] = 39,
		[1436] = 40,  [1437] = 41,  [1438] = 42,  [1439] = 43,  [1440] = 44,
		[1441] = 62,  [1442] = 82,  [1443] = 102, [1444] = 122, [1445] = 142,
		[1446] = 162, [1447] = 182, [1448] = 183, [1449] = 202, [1450] = 242,
		[1451] = 262, [1452] = 282, [1453] = 302, [1454] = 322, [1455] = 342,
		[1456] = 363, [1457] = 382, [1458] = 383, [1459] = 402, [1460] = 444,
		[1461] = 462, [1941] = 463, [1942] = 464, [1943] = 465, [1944] = 466,
		[1945] = 467, [1946] = 468, [1947] = 472, [1948] = 474, [1949] = 476,
		[1950] = 477, [1951] = 478, [1952] = 479, [1953] = 480, [1954] = 481,
		[1955] = 482, [1957] = 500,
		-- Northrend (WotLK)
		[114] = 487, [115] = 489, [116] = 491, [117] = 492, [118] = 493,
		[119] = 494, [120] = 496, [121] = 497, [123] = 502, [125] = 505,
		[127] = 511,
	}

	local area335ToUiMap = {}
	for uiMapID, area335 in pairs(uiMapToArea335) do
		area335ToUiMap[area335] = uiMapID
	end

	local mapNamesEN = {
		[947] = "Azeroth",
		[1411] = "Durotar", [1412] = "Mulgore", [1413] = "The Barrens",
		[1414] = "Kalimdor", [1415] = "Eastern Kingdoms",
		[1416] = "Alterac Mountains", [1417] = "Arathi Highlands", [1418] = "Badlands",
		[1419] = "Blasted Lands", [1420] = "Tirisfal Glades", [1421] = "Silverpine Forest",
		[1422] = "Western Plaguelands", [1423] = "Eastern Plaguelands", [1424] = "Hillsbrad Foothills",
		[1425] = "The Hinterlands", [1426] = "Dun Morogh", [1427] = "Searing Gorge",
		[1428] = "Burning Steppes", [1429] = "Elwynn Forest", [1430] = "Deadwind Pass",
		[1431] = "Duskwood", [1432] = "Loch Modan", [1433] = "Redridge Mountains",
		[1434] = "Stranglethorn Vale", [1435] = "Swamp of Sorrows", [1436] = "Westfall",
		[1437] = "Wetlands", [1438] = "Teldrassil", [1439] = "Darkshore",
		[1440] = "Ashenvale", [1441] = "Thousand Needles", [1442] = "Stonetalon Mountains",
		[1443] = "Desolace", [1444] = "Feralas", [1445] = "Dustwallow Marsh",
		[1446] = "Tanaris", [1447] = "Azshara", [1448] = "Felwood",
		[1449] = "Un'Goro Crater", [1450] = "Moonglade", [1451] = "Silithus",
		[1452] = "Winterspring", [1453] = "Stormwind City", [1454] = "Orgrimmar",
		[1455] = "Ironforge", [1456] = "Thunder Bluff", [1457] = "Darnassus",
		[1458] = "Undercity", [1459] = "Alterac Valley", [1460] = "Warsong Gulch",
		[1461] = "Arathi Basin",
		[1941] = "Eversong Woods", [1942] = "Ghostlands", [1943] = "Azuremyst Isle",
		[1944] = "Hellfire Peninsula", [1945] = "Outland", [1946] = "Zangarmarsh",
		[1947] = "The Exodar", [1948] = "Shadowmoon Valley", [1949] = "Blade's Edge Mountains",
		[1950] = "Bloodmyst Isle", [1951] = "Nagrand", [1952] = "Terokkar Forest",
		[1953] = "Netherstorm", [1954] = "Silvermoon City", [1955] = "Shattrath City",
		[1957] = "Isle of Quel'Danas",
		[114] = "Borean Tundra", [115] = "Dragonblight", [116] = "Grizzly Hills",
		[117] = "Howling Fjord", [118] = "Icecrown", [119] = "Sholazar Basin",
		[120] = "The Storm Peaks", [121] = "Zul'Drak", [123] = "Wintergrasp",
		[125] = "Dalaran", [127] = "Crystalsong Forest",
	}

	local mapNamesES = {
		[947] = "Azeroth",
		[1411] = "Durotar", [1412] = "Mulgore", [1413] = "Los Baldíos",
		[1414] = "Kalimdor", [1415] = "Reinos del Este",
		[1416] = "Montañas de Alterac", [1417] = "Tierras Altas de Arathi", [1418] = "Tierras Inhóspitas",
		[1419] = "Las Tierras Devastadas", [1420] = "Claros de Tirisfal", [1421] = "Bosque de Argénteos",
		[1422] = "Tierras de la Peste del Oeste", [1423] = "Tierras de la Peste del Este", [1424] = "Laderas de Trabalomas",
		[1425] = "Tierras del Interior", [1426] = "Dun Morogh", [1427] = "La Garganta de Fuego",
		[1428] = "Las Estepas Ardientes", [1429] = "Bosque de Elwynn", [1430] = "Paso de la Muerte",
		[1431] = "Bosque del Ocaso", [1432] = "Loch Modan", [1433] = "Montañas Crestagrana",
		[1434] = "Vega de Tuercespina", [1435] = "Pantano de las Penas", [1436] = "Páramos de Poniente",
		[1437] = "Los Humedales", [1438] = "Teldrassil", [1439] = "Costa Oscura",
		[1440] = "Vallefresno", [1441] = "Las Mil Agujas", [1442] = "Sierra Espolón",
		[1443] = "Desolace", [1444] = "Feralas", [1445] = "Marjal Revolcafango",
		[1446] = "Tanaris", [1447] = "Azshara", [1448] = "Frondavil",
		[1449] = "Cráter de Un'Goro", [1450] = "Claro de la Luna", [1451] = "Silithus",
		[1452] = "Cuna del Invierno", [1453] = "Ciudad de Ventormenta", [1454] = "Orgrimmar",
		[1455] = "Forjaz", [1456] = "Cima del Trueno", [1457] = "Darnassus",
		[1458] = "Entrañas", [1459] = "Valle de Alterac", [1460] = "Garganta Grito de Guerra",
		[1461] = "Cuenca de Arathi",
		[1941] = "Bosque Canción Eterna", [1942] = "Tierras Fantasma", [1943] = "Isla Bruma Azur",
		[1944] = "Península del Fuego Infernal", [1945] = "Terrallende", [1946] = "Marisma de Zangar",
		[1947] = "El Exodar", [1948] = "Valle Sombraluna", [1949] = "Montañas Filospada",
		[1950] = "Isla Bruma de Sangre", [1951] = "Nagrand", [1952] = "Bosque de Terokkar",
		[1953] = "Tormenta Abisal", [1954] = "Ciudad de Lunargenta", [1955] = "Ciudad de Shattrath",
		[1957] = "Isla de Quel'Danas",
		[114] = "Tundra Boreal", [115] = "Cementerio de Dragones", [116] = "Colinas Pardas",
		[117] = "Fiordo Aquilonal", [118] = "Corona de Hielo", [119] = "Cuenca de Sholazar",
		[120] = "Las Cumbres Tormentosas", [121] = "Zul'Drak", [123] = "Conquista del Invierno",
		[125] = "Dalaran", [127] = "Bosque Canto de Cristal",
	}

	local zoneNameToUiMap = {}
	for id, name in pairs(mapNamesEN) do zoneNameToUiMap[name] = id end
	for id, name in pairs(mapNamesES) do zoneNameToUiMap[name] = id end

	local subZoneToParentUiMap = {
		["Campamento Narache"] = 1412, ["Camp Narache"] = 1412, ["Mesa de la Nube Roja"] = 1412, ["Red Cloud Mesa"] = 1412,
		["Poblado Pezuña de Sangre"] = 1412, ["Bloodhoof Village"] = 1412,
		["Valle de los Retos"] = 1411, ["Valle de las Pruebas"] = 1411, ["Valley of Trials"] = 1411,
		["Cerrotajo"] = 1411, ["Razor Hill"] = 1411, ["Aldea Sen'jin"] = 1411, ["Sen'jin Village"] = 1411,
		["Villanorte"] = 1429, ["Northshire"] = 1429, ["Valle de Villanorte"] = 1429, ["Northshire Valley"] = 1429,
		["Abadía de Villanorte"] = 1429, ["Northshire Abbey"] = 1429, ["Villadorada"] = 1429, ["Goldshire"] = 1429,
		["Valle Frío"] = 1426, ["Valle de Crestanevada"] = 1426, ["Coldridge Valley"] = 1426,
		["Yunque de Hierro"] = 1426, ["Anvilmar"] = 1426, ["Kharanos"] = 1426,
		["Cañada Umbría"] = 1438, ["Shadowglen"] = 1438, ["Aldrassil"] = 1438, ["Dolanaar"] = 1438,
		["Camposanto"] = 1420, ["Tañido de Muerte"] = 1420, ["Deathknell"] = 1420, ["Rémol"] = 1420, ["Brill"] = 1420,
		["Isla del Caminante del Sol"] = 1941, ["Sunstrider Isle"] = 1941, ["Aldea Brisaveloz"] = 1941,
		["Valle Ammen"] = 1943, ["Ammen Vale"] = 1943, ["Avanzada Azur"] = 1943,
	}
	for name, id in pairs(subZoneToParentUiMap) do
		zoneNameToUiMap[name] = id
	end

	local kalimdorZones = {
		[1411]=true, [1412]=true, [1413]=true, [1438]=true, [1439]=true, [1440]=true, [1441]=true,
		[1442]=true, [1443]=true, [1444]=true, [1445]=true, [1446]=true, [1447]=true, [1448]=true,
		[1449]=true, [1450]=true, [1451]=true, [1452]=true, [1454]=true, [1456]=true, [1457]=true,
		[1460]=true, [1943]=true, [1947]=true, [1950]=true,
	}
	local outlandZones = {
		[1944]=true, [1946]=true, [1948]=true, [1949]=true, [1951]=true, [1952]=true, [1953]=true, [1955]=true,
	}

	local function NormalizeUiMapID(id)
		if not id then return nil end
		return area335ToUiMap[id] or id
	end

	local function GetViewedUiMapID()
		local areaID = GetCurrentMapAreaID and GetCurrentMapAreaID()
		if areaID and area335ToUiMap[areaID] then
			return area335ToUiMap[areaID]
		end
		local cont = GetCurrentMapContinent and GetCurrentMapContinent()
		local zone = GetCurrentMapZone and GetCurrentMapZone()
		if cont and cont > 0 and zone and zone > 0 and GetMapZones then
			local zones = { GetMapZones(cont) }
			local zName = zones[zone]
			if zName then
				local mapped = subZoneToParentUiMap[zName] or zoneNameToUiMap[zName]
				if mapped then return mapped end
			end
		end
		if cont == 1 and (not zone or zone == 0) then return 1414 end
		if cont == 2 and (not zone or zone == 0) then return 1415 end
		if cont == 3 and (not zone or zone == 0) then return 1945 end
		if cont == 0 then return 947 end
		return areaID and NormalizeUiMapID(areaID) or nil
	end

	local function GetPlayerUiMapID()
		local subText = GetSubZoneText and GetSubZoneText()
		if subText and subText ~= "" and subZoneToParentUiMap[subText] then
			return subZoneToParentUiMap[subText]
		end
		local zText = GetRealZoneText and GetRealZoneText()
		if zText and zText ~= "" then
			if subZoneToParentUiMap[zText] then return subZoneToParentUiMap[zText] end
			if zoneNameToUiMap[zText] then return zoneNameToUiMap[zText] end
		end
		local zoneText = GetZoneText and GetZoneText()
		if zoneText and zoneText ~= "" then
			if subZoneToParentUiMap[zoneText] then return subZoneToParentUiMap[zoneText] end
			if zoneNameToUiMap[zoneText] then return zoneNameToUiMap[zoneText] end
		end
		if not (WorldMapFrame and WorldMapFrame:IsShown()) and SetMapToCurrentZone then
			SetMapToCurrentZone()
		end
		local areaID = GetCurrentMapAreaID and GetCurrentMapAreaID()
		if areaID and area335ToUiMap[areaID] then
			return area335ToUiMap[areaID]
		end
		return GetViewedUiMapID()
	end

	_G.C_Map = _G.C_Map or {}

	_G.C_Map.GetDisplayedMapID = GetViewedUiMapID

	_G.C_Map.GetBestMapForUnit = function(unit)
		return GetPlayerUiMapID()
	end

	_G.C_Map.GetMapInfo = function(mapID)
		mapID = NormalizeUiMapID(mapID)
		if not mapID then return nil end
		local loc = GetLocale and GetLocale() or "esES"
		local isES = (loc == "esES" or loc == "esMX")
		local name = (isES and mapNamesES[mapID]) or mapNamesEN[mapID]
			or (SpokenPlaces and SpokenPlaces.Zones and SpokenPlaces.Zones[mapID] and SpokenPlaces.Zones[mapID].name)
			or ("Map " .. tostring(mapID))
		local mapType = 3
		local parentMapID = 1415
		if mapID == 947 then
			mapType = 1
			parentMapID = 0
		elseif mapID == 1414 or mapID == 1415 or mapID == 1945 then
			mapType = 2
			parentMapID = 947
		elseif kalimdorZones[mapID] then
			parentMapID = 1414
		elseif outlandZones[mapID] then
			parentMapID = 1945
		end
		return {
			mapID = mapID,
			name = name,
			mapType = mapType,
			parentMapID = parentMapID,
		}
	end

	if not _G.C_Map.GetMapArtLayers then
		_G.C_Map.GetMapArtLayers = function(mapID)
			return {}
		end
	end

	if not _G.C_Map.GetAreaInfo then
		_G.C_Map.GetAreaInfo = function(areaID)
			return (GetAreaInfo and GetAreaInfo(areaID)) or ""
		end
	end

	if not _G.C_Map.MapHasArt then
		_G.C_Map.MapHasArt = function(mapID)
			return false
		end
	end

	if not _G.C_Map.GetMapChildrenInfo then
		_G.C_Map.GetMapChildrenInfo = function(mapID)
			return {}
		end
	end

	-- Sincronizar WorldMapFrame.mapID con el uiMapID de Classic en 3.3.5a
	if _G.WorldMapFrame then
		local function syncWorldMapID()
			_G.WorldMapFrame.mapID = GetViewedUiMapID()
		end
		if _G.WorldMapFrame_Update then
			hooksecurefunc("WorldMapFrame_Update", syncWorldMapID)
		end
		if _G.WorldMapFrame.HookScript then
			_G.WorldMapFrame:HookScript("OnShow", syncWorldMapID)
		end
	end
end

if not _G.C_MapExplorationInfo then
	_G.C_MapExplorationInfo = {
		GetExploredMapTextures = function() return nil end,
		GetExploredAreaIDsAtPosition = function() return nil end,
	}
end
