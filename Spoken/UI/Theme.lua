--[[****************************************************************************
  * Spoken - UI/Theme.lua                                                      *
  * Paleta visual cinemática, fuentes modernas y estilos TuWoW (ForeverUI).    *
  * Inspirado en la interfaz moderna de Retail y ForeverUI 3.3.5a.             *
  ****************************************************************************]]

setfenv(1, SpokenEnv)

Theme = Theme or {}

local FONTS_DIR = [[Interface\AddOns\Spoken\Fonts\]]

Theme.colors = {
    background     = { 0.025, 0.032, 0.048, 0.96 }, -- Pizarra obsidiana profunda
    panel          = { 0.045, 0.055, 0.078, 0.94 }, -- Capa media traslucida
    panelElevated  = { 0.070, 0.085, 0.115, 0.98 }, -- Elementos flotantes elevados
    
    goldBright     = { 1.000, 0.820, 0.200, 1.00 }, -- Oro brillante (titulos / activo)
    gold           = { 0.930, 0.720, 0.250, 1.00 }, -- Oro clasico
    goldMid        = { 0.880, 0.700, 0.280, 1.00 }, -- Oro viejo cepillado (bordes)
    goldDim        = { 0.450, 0.350, 0.160, 0.85 }, -- Oro tenue / divisores
    
    textPrimary    = { 0.930, 0.910, 0.850, 1.00 }, -- Blanco marfil suave (cuerpo)
    textSecondary  = { 0.680, 0.700, 0.760, 1.00 }, -- Plata ceniza (subtitulos)
    textMuted      = { 0.450, 0.480, 0.540, 1.00 }, -- Gris grafito (duraciones)
    
    highlightWord  = { 1.000, 0.850, 0.300, 1.00 }, -- Oro resplandeciente en palabra activa
    cyanAccent     = { 0.350, 0.750, 1.000, 1.00 }, -- Cyan magico (lore / lugares)
    danger         = { 0.950, 0.300, 0.250, 1.00 }, -- Peligro / combate
    success        = { 0.310, 0.820, 0.480, 1.00 }, -- Exito
}

Theme.backdrops = {
    main = {
        bgFile = "Interface\\Buttons\\WHITE8X8",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true, tileSize = 16, edgeSize = 12,
        insets = { left = 3, right = 3, top = 3, bottom = 3 },
    },
    card = {
        bgFile = "Interface\\Buttons\\WHITE8X8",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true, tileSize = 16, edgeSize = 10,
        insets = { left = 2, right = 2, top = 2, bottom = 2 },
    },
    subtitle = {
        bgFile = "Interface\\Buttons\\WHITE8X8",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true, tileSize = 16, edgeSize = 8,
        insets = { left = 2, right = 2, top = 2, bottom = 2 },
    },
}

function Theme:GetFont(kind)
    if kind == "title" then
        return FONTS_DIR .. "Inter-SemiBold.ttf", "Fonts\\FRIZQT__.TTF"
    elseif kind == "meta" then
        return FONTS_DIR .. "FiraSans-Medium.ttf", "Fonts\\ARIALN.TTF"
    else -- "dialogue", "body", "subtitle"
        return FONTS_DIR .. "Inter-Medium.ttf", "Fonts\\FRIZQT__.TTF"
    end
end

function Theme:ApplyPanel(frame, alternate)
    if not frame or not frame.SetBackdrop then return end
    frame:SetBackdrop(self.backdrops.main)
    local col = alternate and self.colors.panelElevated or self.colors.panel
    frame:SetBackdropColor(unpack(col))
    frame:SetBackdropBorderColor(unpack(self.colors.goldDim))
end

function Theme:ApplyCard(frame)
    if not frame or not frame.SetBackdrop then return end
    frame:SetBackdrop(self.backdrops.card)
    frame:SetBackdropColor(unpack(self.colors.background))
    frame:SetBackdropBorderColor(unpack(self.colors.goldDim))
end

function Theme:ApplyButton(button)
    if not button then return end
    if button.SetBackdrop then
        button:SetBackdrop(self.backdrops.card)
        button:SetBackdropColor(0.06, 0.07, 0.10, 0.95)
        button:SetBackdropBorderColor(unpack(self.colors.goldDim))
    end
    button:HookScript("OnEnter", function(self)
        if self.SetBackdropColor then self:SetBackdropColor(0.14, 0.12, 0.08, 1) end
        if self.SetBackdropBorderColor then self:SetBackdropBorderColor(unpack(Theme.colors.goldBright)) end
    end)
    button:HookScript("OnLeave", function(self)
        if self.SetBackdropColor then self:SetBackdropColor(0.06, 0.07, 0.10, 0.95) end
        if self.SetBackdropBorderColor then self:SetBackdropBorderColor(unpack(Theme.colors.goldDim)) end
    end)
end

function Theme:SetSolidColor(texture, r, g, b, a)
    if not texture then return end
    texture:SetTexture("Interface\\Buttons\\WHITE8X8")
    texture:SetVertexColor(r, g, b, a or 1)
end

function Theme:CreateDivider(parent)
    local line = parent:CreateTexture(nil, "ARTWORK")
    line:SetHeight(1)
    self:SetSolidColor(line, self.colors.goldDim[1], self.colors.goldDim[2], self.colors.goldDim[3], 0.6)
    return line
end

