--[[****************************************************************************
  * Spoken - UI/StandaloneWindow.lua                                          *
  * Ventana de Configuración Cinemática Independiente (TuWoW Edition).        *
  * Inspirada en la estética 'Dark Glass & Brushed Gold' de TuWoW_Leveling.   *
  ****************************************************************************]]

setfenv(1, SpokenEnv)

StandaloneWindow = StandaloneWindow or {}

local WIN_WIDTH  = 880
local WIN_HEIGHT = 580
local HEADER_H   = 52
local SIDEBAR_W  = 200

local win = nil
local activeIndex = 1
local navButtons = {}
local contentHost = nil

---------------------------------------------------------------------------
-- 1. Helper: Esquinas ornamentales de oro (TuWoW Style)
---------------------------------------------------------------------------
local function CreateGoldCorners(parent)
    local corners = {
        { point = "TOPLEFT",     x = -2, y =  2, u1 = 0, u2 = 1, v1 = 0, v2 = 1 },
        { point = "TOPRIGHT",    x =  2, y =  2, u1 = 1, u2 = 0, v1 = 0, v2 = 1 },
        { point = "BOTTOMLEFT",  x = -2, y = -2, u1 = 0, u2 = 1, v1 = 1, v2 = 0 },
        { point = "BOTTOMRIGHT", x =  2, y = -2, u1 = 1, u2 = 0, v1 = 1, v2 = 0 },
    }
    local texPath = [[Interface\AddOns\Spoken\Media\corner-gold.tga]]
    for _, c in ipairs(corners) do
        local tex = parent:CreateTexture(nil, "OVERLAY", nil, 7)
        tex:SetSize(28, 28)
        tex:SetPoint(c.point, parent, c.point, c.x, c.y)
        tex:SetTexture(texPath)
        tex:SetTexCoord(c.u1, c.u2, c.v1, c.v2)
    end
end

---------------------------------------------------------------------------
-- 2. Lista de Páginas registradas en Spoken
---------------------------------------------------------------------------
local function GetPages()
    local pages = {}

    -- Pagina 0: Spoken General / Inicio
    local mainPanel = _G.SpokenOptionsPanel
    if mainPanel and mainPanel.layout then
        table.insert(pages, {
            id = "general",
            name = (L and L.OPT_HOME_TITLE) or "General",
            order = 0,
            frame = mainPanel,
            layout = mainPanel.layout,
            icon = [[Interface\Icons\Spell_Misc_EmotionHappy]],
        })
    end

    -- Paginas registradas por los modulos (Quests, Gossip, Places, Readables, Bosses, Chatter, etc.)
    for _, p in ipairs(Options.pages or {}) do
        local name = p.name or "Modulo"
        local lowerName = string.lower(name)
        local icon = [[Interface\Icons\INV_Misc_Book_07]]

        if lowerName:find("mision") or lowerName:find("quest") then
            icon = [[Interface\Icons\INV_Misc_Book_07]]
        elseif lowerName:find("charla") or lowerName:find("gossip") then
            icon = [[Interface\Icons\Spell_Misc_EmotionHappy]]
        elseif lowerName:find("lugar") or lowerName:find("place") then
            icon = [[Interface\Icons\INV_Misc_Map02]]
        elseif lowerName:find("lectura") or lowerName:find("readable") or lowerName:find("libro") then
            icon = [[Interface\Icons\INV_Misc_Book_09]]
        elseif lowerName:find("jefe") or lowerName:find("boss") then
            icon = [[Interface\Icons\Spell_Shadow_SummonVoidWalker]]
        elseif lowerName:find("murmullo") or lowerName:find("chatter") then
            icon = [[Interface\Icons\Spell_Shadow_WhispersOfWeakness]]
        elseif lowerName:find("contrib") then
            icon = [[Interface\Icons\INV_Misc_Gift_01]]
        end

        table.insert(pages, {
            id = name,
            name = name,
            order = p.order or 100,
            frame = p.frame,
            layout = p.layout,
            icon = icon,
        })
    end

    table.sort(pages, function(a, b) return (a.order or 0) < (b.order or 0) end)
    return pages
end

---------------------------------------------------------------------------
-- 3. Seleccionar y montar página en el viewport de contenido
---------------------------------------------------------------------------
local function SelectPage(index)
    local pages = GetPages()
    if #pages == 0 then return end
    if index < 1 or index > #pages then index = 1 end
    activeIndex = index

    -- Ocultar todas las paginas para evitar solapamientos
    for _, p in ipairs(pages) do
        if p.frame and p.frame ~= pages[index].frame then
            p.frame:Hide()
        end
    end

    -- Montar y mostrar la pagina seleccionada
    local target = pages[index]
    if target and target.frame and contentHost then
        local f = target.frame
        f:SetParent(contentHost)
        f:ClearAllPoints()
        f:SetAllPoints(contentHost)
        f:Show()
        if target.layout and target.layout.Refresh then
            pcall(target.layout.Refresh, target.layout)
        end
    end

    -- Actualizar resaltado de los botones del sidebar
    for i, btn in ipairs(navButtons) do
        if i == index then
            btn.activeIndicator:Show()
            btn.activeBg:Show()
            btn.title:SetTextColor(1.00, 0.82, 0.20, 1.0) -- Oro brillante
        else
            btn.activeIndicator:Hide()
            btn.activeBg:Hide()
            btn.title:SetTextColor(0.85, 0.85, 0.80, 0.85) -- Marfil suave
        end
    end
end

---------------------------------------------------------------------------
-- 4. Construccion de la Ventana Cinemática
---------------------------------------------------------------------------
local function BuildWindow()
    if win then return win end

    -- Asegurar que Spoken:Setup() haya creado las opciones base
    if Options and Options.Setup then
        pcall(Options.Setup, Options)
    end

    -- Marco Principal
    win = CreateFrame("Frame", "SpokenStandaloneOptionsFrame", UIParent)
    win:SetSize(WIN_WIDTH, WIN_HEIGHT)
    win:SetPoint("CENTER", UIParent, "CENTER", 0, 10)
    win:SetFrameStrata("HIGH")
    win:SetToplevel(true)
    win:SetClampedToScreen(true)
    win:EnableMouse(true)
    win:SetMovable(true)
    win:Hide()

    -- Cerrar con tecla Escape
    tinsert(UISpecialFrames, "SpokenStandaloneOptionsFrame")

    -- Fondo Pizarra Obsidiana Profunda
    local bg = win:CreateTexture(nil, "BACKGROUND", nil, -8)
    bg:SetAllPoints(win)
    bg:SetTexture([[Interface\Buttons\WHITE8X8]])
    bg:SetVertexColor(0.025, 0.032, 0.048, 0.96)
    win.Background = bg

    -- Velo de Estrellas Cósmicas (TuWoW Media)
    local cosmic = win:CreateTexture(nil, "BACKGROUND", nil, -7)
    cosmic:SetAllPoints(win)
    cosmic:SetTexture([[Interface\AddOns\Spoken\Media\band-stars.tga]])
    cosmic:SetVertexColor(0.08, 0.12, 0.22, 0.40)
    win.CosmicBg = cosmic

    -- Borde de Oro Forjado (Retail Style 9-Slice)
    local borderFrame = CreateFrame("Frame", nil, win)
    borderFrame:SetPoint("TOPLEFT", win, "TOPLEFT", -3, 3)
    borderFrame:SetPoint("BOTTOMRIGHT", win, "BOTTOMRIGHT", 3, -3)
    borderFrame:SetFrameLevel(win:GetFrameLevel() + 20)
    borderFrame:SetBackdrop({
        edgeFile = [[Interface\DialogFrame\UI-DialogBox-Gold-Border]],
        edgeSize = 20,
        insets = { left = 5, right = 5, top = 5, bottom = 5 },
    })
    borderFrame:SetBackdropBorderColor(1.0, 0.88, 0.50, 0.95)
    win.Border = borderFrame

    -- Esquinas Ornamentales de Oro
    CreateGoldCorners(borderFrame)

    -----------------------------------------------------------------------
    -- Encabezado (Header con Arrastre)
    -----------------------------------------------------------------------
    local header = CreateFrame("Frame", nil, win)
    header:SetPoint("TOPLEFT", win, "TOPLEFT", 6, -6)
    header:SetPoint("TOPRIGHT", win, "TOPRIGHT", -6, -6)
    header:SetHeight(HEADER_H)
    header:EnableMouse(true)
    header:RegisterForDrag("LeftButton")
    header:SetScript("OnDragStart", function() win:StartMoving() end)
    header:SetScript("OnDragStop", function() win:StopMovingOrSizing() end)
    win.Header = header

    -- Icono del Addon
    local icon = header:CreateTexture(nil, "ARTWORK")
    icon:SetSize(32, 32)
    icon:SetPoint("LEFT", header, "LEFT", 12, 0)
    icon:SetTexture([[Interface\AddOns\Spoken\icon.tga]])

    -- Titulo Principal
    local title = header:CreateFontString(nil, "OVERLAY")
    local fontTitle = Theme and Theme.GetFont and Theme:GetFont("title") or "Fonts\\FRIZQT__.TTF"
    title:SetFont(fontTitle, 17, "OUTLINE")
    title:SetText("|cffffd10dSPOKEN|r")
    title:SetPoint("TOPLEFT", icon, "TOPRIGHT", 10, -1)

    -- Subtitulo TuWoW
    local subtitle = header:CreateFontString(nil, "OVERLAY")
    local fontMeta = Theme and Theme.GetFont and Theme:GetFont("meta") or "Fonts\\ARIALN.TTF"
    subtitle:SetFont(fontMeta, 11, "")
    subtitle:SetText("|cffaaaaaaNarración y Locución en Vivo · TuWoW Edition v3.8.3|r")
    subtitle:SetPoint("BOTTOMLEFT", icon, "BOTTOMRIGHT", 10, 1)

    -- Boton de Cerrar (X dorada)
    local closeBtn = CreateFrame("Button", nil, header, "UIPanelCloseButton")
    closeBtn:SetSize(28, 28)
    closeBtn:SetPoint("TOPRIGHT", header, "TOPRIGHT", -4, -4)
    closeBtn:SetScript("OnClick", function()
        PlaySound("igMainMenuClose")
        win:Hide()
    end)

    -- Divisor dorado horizontal bajo el encabezado
    local divHeader = win:CreateTexture(nil, "ARTWORK")
    divHeader:SetHeight(1)
    divHeader:SetPoint("TOPLEFT", win, "TOPLEFT", 12, -(HEADER_H + 6))
    divHeader:SetPoint("TOPRIGHT", win, "TOPRIGHT", -12, -(HEADER_H + 6))
    divHeader:SetTexture([[Interface\Buttons\WHITE8X8]])
    divHeader:SetVertexColor(0.88, 0.70, 0.28, 0.40)

    -----------------------------------------------------------------------
    -- Barra Lateral Izquierda (Navigation Rail)
    -----------------------------------------------------------------------
    local sidebar = CreateFrame("Frame", nil, win)
    sidebar:SetPoint("TOPLEFT", win, "TOPLEFT", 10, -(HEADER_H + 12))
    sidebar:SetPoint("BOTTOMLEFT", win, "BOTTOMLEFT", 10, 12)
    sidebar:SetWidth(SIDEBAR_W)

    -- Fondo sutil elevado del sidebar
    local sideBg = sidebar:CreateTexture(nil, "BACKGROUND", nil, -6)
    sideBg:SetAllPoints(sidebar)
    sideBg:SetTexture([[Interface\Buttons\WHITE8X8]])
    sideBg:SetVertexColor(0.045, 0.055, 0.078, 0.75)

    -- Linea vertical divisoria a la derecha del sidebar
    local divSide = sidebar:CreateTexture(nil, "ARTWORK")
    divSide:SetWidth(1)
    divSide:SetPoint("TOPRIGHT", sidebar, "TOPRIGHT", 0, 0)
    divSide:SetPoint("BOTTOMRIGHT", sidebar, "BOTTOMRIGHT", 0, 0)
    divSide:SetTexture([[Interface\Buttons\WHITE8X8]])
    divSide:SetVertexColor(0.88, 0.70, 0.28, 0.25)

    win.Sidebar = sidebar

    -----------------------------------------------------------------------
    -- Area de Contenido (Viewport Derecho)
    -----------------------------------------------------------------------
    contentHost = CreateFrame("Frame", "SpokenOptionsContentHost", win)
    contentHost:SetPoint("TOPLEFT", sidebar, "TOPRIGHT", 8, 0)
    contentHost:SetPoint("BOTTOMRIGHT", win, "BOTTOMRIGHT", -14, 12)
    win.ContentHost = contentHost

    -----------------------------------------------------------------------
    -- Renderizado de Botones de Navegación del Sidebar
    -----------------------------------------------------------------------
    local function RenderNav()
        for _, btn in ipairs(navButtons) do btn:Hide() end
        local pages = GetPages()
        local yOffset = -8

        for i, page in ipairs(pages) do
            local btn = navButtons[i]
            if not btn then
                btn = CreateFrame("Button", nil, sidebar)
                btn:SetHeight(34)
                btn:SetPoint("LEFT", sidebar, "LEFT", 4, 0)
                btn:SetPoint("RIGHT", sidebar, "RIGHT", -6, 0)

                -- Fondo activo dorado tenue
                local actBg = btn:CreateTexture(nil, "BACKGROUND")
                actBg:SetAllPoints(btn)
                actBg:SetTexture([[Interface\Buttons\WHITE8X8]])
                actBg:SetVertexColor(0.88, 0.70, 0.28, 0.12)
                actBg:Hide()
                btn.activeBg = actBg

                -- Barra indicadora activa izquierda (oro brillante)
                local ind = btn:CreateTexture(nil, "OVERLAY")
                ind:SetWidth(3)
                ind:SetPoint("TOPLEFT", btn, "TOPLEFT", 0, 0)
                ind:SetPoint("BOTTOMLEFT", btn, "BOTTOMLEFT", 0, 0)
                ind:SetTexture([[Interface\Buttons\WHITE8X8]])
                ind:SetVertexColor(1.00, 0.82, 0.20, 1.0)
                ind:Hide()
                btn.activeIndicator = ind

                -- Textura de realce al pasar el ratón (Hover)
                btn:SetHighlightTexture([[Interface\QuestFrame\UI-QuestTitleHighlight]])
                local hl = btn:GetHighlightTexture()
                if hl and hl.SetBlendMode then hl:SetBlendMode("ADD") end

                -- Icono de la seccion
                local bIcon = btn:CreateTexture(nil, "ARTWORK")
                bIcon:SetSize(18, 18)
                bIcon:SetPoint("LEFT", btn, "LEFT", 10, 0)
                btn.icon = bIcon

                -- Titulo de la seccion
                local bText = btn:CreateFontString(nil, "OVERLAY")
                bText:SetFont(fontTitle, 12, "")
                bText:SetPoint("LEFT", bIcon, "RIGHT", 8, 0)
                bText:SetPoint("RIGHT", btn, "RIGHT", -6, 0)
                bText:SetJustifyH("LEFT")
                btn.title = bText

                btn:SetScript("OnClick", function(self)
                    PlaySound("igMainMenuOptionCheckBoxOn")
                    SelectPage(self.pageIndex)
                end)

                navButtons[i] = btn
            end

            btn.pageIndex = i
            btn:ClearAllPoints()
            btn:SetPoint("TOPLEFT", sidebar, "TOPLEFT", 4, yOffset)
            btn:SetPoint("TOPRIGHT", sidebar, "TOPRIGHT", -6, yOffset)
            btn.icon:SetTexture(page.icon)
            btn.title:SetText(page.name)
            btn:Show()

            yOffset = yOffset - 36
        end

        -- Pie del Sidebar: Boton de Compendio y Version
        local footFrame = CreateFrame("Frame", nil, sidebar)
        footFrame:SetPoint("BOTTOMLEFT", sidebar, "BOTTOMLEFT", 4, 8)
        footFrame:SetPoint("BOTTOMRIGHT", sidebar, "BOTTOMRIGHT", -6, 8)
        footFrame:SetHeight(60)

        local compBtn = CreateFrame("Button", nil, footFrame, "UIPanelButtonTemplate")
        compBtn:SetHeight(22)
        compBtn:SetPoint("TOPLEFT", footFrame, "TOPLEFT", 4, -4)
        compBtn:SetPoint("TOPRIGHT", footFrame, "TOPRIGHT", -4, -4)
        compBtn:SetText("Compendio")
        compBtn:SetScript("OnClick", function()
            if _G.SpokenCompendium and _G.SpokenCompendium.Toggle then
                _G.SpokenCompendium:Toggle()
            end
        end)

        local verText = footFrame:CreateFontString(nil, "OVERLAY")
        verText:SetFont(fontMeta, 10, "")
        verText:SetPoint("BOTTOM", footFrame, "BOTTOM", 0, 2)
        verText:SetText("|cff777777TuWoW 3.3.5a · Die & Rise|r")
    end

    win.RenderNav = RenderNav
    win:SetScript("OnHide", function()
        if Subtitle and Subtitle.IsShowingSample and Subtitle:IsShowingSample() then
            Subtitle:ShowSample(false)
        end
        if Options and (Options.previewing or Addon.previewStyle) then
            Options:SetPreviewing(false)
        end
    end)
    return win
end

---------------------------------------------------------------------------
-- 5. API Pública de StandaloneWindow
---------------------------------------------------------------------------
function StandaloneWindow:Open(targetOrderOrName)
    local f = BuildWindow()
    f.RenderNav()
    f:Show()
    f:SetAlpha(1)

    -- Si se solicitó una sección específica por orden o nombre
    local pages = GetPages()
    local targetIndex = 1
    if targetOrderOrName then
        for i, p in ipairs(pages) do
            if p.order == targetOrderOrName or p.name == targetOrderOrName or p.id == targetOrderOrName then
                targetIndex = i
                break
            end
        end
    end
    SelectPage(targetIndex)
end

function StandaloneWindow:Toggle(targetOrderOrName)
    if win and win:IsShown() then
        win:Hide()
    else
        self:Open(targetOrderOrName)
    end
end

-- Exportar al entorno global y de Spoken
SpokenStandaloneWindow = StandaloneWindow
_G.SpokenStandaloneWindow = StandaloneWindow

