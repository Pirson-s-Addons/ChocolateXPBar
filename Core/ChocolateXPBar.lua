local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- La barra de experiencia es una tableta de chocolate: el relleno y la bonificacion
-- de descanso son del sabor elegido, y lo vacio, un molde.
-- Las texturas salen de _project/tools/gen_chocolate_bar.py.
local IMG = "Interface\\AddOns\\ChocolateXPBar\\img\\bar_"

ns.FLAVORS = { "MILK", "DARK", "WHITE", "RUBY", "PRALINE" }
ns.DEFAULTS = { fill = "MILK", bonus = "PRALINE" }

function ns.TexturePath(flavor)
    return IMG .. flavor:lower()
end

-- Sobre chocolate blanco la bonificacion se oscurece, a tono caramelo: si no, no se
-- distingue. Oscurecer los tres canales por igual la deja gris.
function ns.RestedTint()
    if ChocolateXPBarDB.fill == "WHITE" then return 0.72, 0.5, 0.32 end
    return 1, 1, 1
end

local bars = {}

local function Paint(bar)
    if bar.painting then return end -- el propio Paint dispara los ganchos
    bar.painting = true
    bar.status:SetStatusBarTexture(ns.TexturePath(ChocolateXPBarDB.fill))
    bar.status:SetStatusBarColor(1, 1, 1, 1)
    bar.rested:SetTexture(ns.TexturePath(ChocolateXPBarDB.bonus))
    local r, g, b = ns.RestedTint()
    bar.rested:SetVertexColor(r, g, b, 1)
    bar.painting = false
end

-- Aplica los sabores guardados; el panel de opciones lo llama al cambiar algo
function ns.Apply()
    for _, bar in ipairs(bars) do Paint(bar) end
end

-- Antes de la 8.0 el fondo de la barra es una textura sin nombre
local function FindBackground(status)
    for _, region in ipairs({ status:GetRegions() }) do
        if region.SetTexCoord and region:GetDrawLayer() == "BACKGROUND" then return region end
    end
end

-- owner: quien tiene UpdateStatusBarTextures, en los clientes que lo tienen
local function StyleBar(status, rested, owner)
    local bar = { status = status, rested = rested }
    bars[#bars + 1] = bar
    local function Repaint() Paint(bar) end

    -- Cada cliente repinta a su manera y todas acaban aqui: el atlas de los modernos
    -- al cambiar el descanso, y el color azul o morado de los demas
    hooksecurefunc(status, "SetStatusBarColor", Repaint)
    hooksecurefunc(rested, "SetVertexColor", Repaint)
    if owner.UpdateStatusBarTextures then hooksecurefunc(owner, "UpdateStatusBarTextures", Repaint) end

    local mold = status.Background or FindBackground(status)
    if mold then
        mold:SetTexture(IMG .. "mold")
        mold:SetTexCoord(0, 1, 0, 1)
        mold:SetVertexColor(1, 1, 1, 1)
    end

    if rested:GetParent() ~= status then
        -- Blizzard la pinta en el marco padre, debajo del fondo de la StatusBar, y
        -- con menos alto. El molde es opaco y la taparia: va encima del molde y
        -- debajo del relleno (capa BORDER), a toda la altura.
        rested:SetParent(status)
        rested:SetDrawLayer("BACKGROUND", 2)
        rested:ClearAllPoints()
        rested:SetPoint("TOPLEFT", status)
        rested:SetPoint("BOTTOMLEFT", status)
    else
        rested:SetHeight(status:GetHeight()) -- hasta 7.x ya va sobre el molde
    end

    -- Hasta 9.x Blizzard la ensancha con este SetPoint y no la recorta: el chocolate
    -- saldria estirado. Los demas clientes la recortan ellos (SetWidth y SetTexCoord).
    hooksecurefunc(rested, "SetPoint", function(self, point, _, _, x)
        if point == "TOPRIGHT" then self:SetTexCoord(0, x / status:GetWidth(), 0, 1) end
    end)

    -- Los destellos de ganar XP y subir de nivel son azules/morados: dorados aqui
    for _, key in ipairs({ "GainFlareAnimationTexture", "LevelUpTexture" }) do
        local flash = status[key]
        if flash then
            flash:SetDesaturated(true)
            flash:SetVertexColor(1, 0.75, 0.4)
        end
    end

    Paint(bar)
end

local function SetAlphaAll(textures, alpha)
    for _, texture in ipairs(textures) do texture:SetAlpha(alpha) end
end

-- Forever, Retail y los Classic actuales. El contenedor es de todas las barras
-- (reputacion, honor...): solo se cambia mientras muestra la de experiencia.
local function StyleContainer(container)
    local isXP = container:GetShownBar() == container.bars[StatusTrackingBarInfo.BarsEnum.Experience]
    local alpha = isXP and 0 or 1
    SetAlphaAll({ container.BarFrameTexture }, alpha) -- Forever y Retail
    SetAlphaAll(container.MainMenuBarTextures or {}, alpha) -- Classic, con sus divisiones
    SetAlphaAll(container.StandaloneTextures or {}, alpha)
    -- Las divisiones ya van en la textura: son las ranuras entre porciones
    if container.HorizontalDividersPool then -- solo Forever
        for divider in container.HorizontalDividersPool:EnumerateActive() do
            divider:SetShown(not isXP)
        end
    end
end

local function HookContainers(manager)
    for _, container in ipairs(manager.barContainers) do
        local bar = container.bars[StatusTrackingBarInfo.BarsEnum.Experience]
        StyleBar(bar.StatusBar, bar.ExhaustionLevelFillBar, bar)
        hooksecurefunc(container, "ApplyPendingBarToShow", StyleContainer)
        if container.UpdateDividers then hooksecurefunc(container, "UpdateDividers", StyleContainer) end
        StyleContainer(container)
    end
end

-- 8.0 a 9.2: el marco y las divisiones son dos pares de texturas del gestor, uno
-- para la barra de arriba y otro para la de abajo. Las barras nacen en
-- PLAYER_ENTERING_WORLD, despues de PLAYER_LOGIN.
local function HookManager(manager)
    local xpBar
    hooksecurefunc(manager, "AddBarFromTemplate", function(self)
        local bar = self.bars[#self.bars]
        if bar.Update == ExpBarMixin.Update then
            xpBar = bar
            StyleBar(bar.StatusBar, bar.ExhaustionLevelFillBar, bar)
            self:UpdateBarsShown()
        end
    end)
    hooksecurefunc(manager, "LayoutBars", function(self, visible)
        local lower = visible[2] or visible[1] -- con una sola barra, es la "de abajo"
        local upper = visible[2] and visible[1]
        SetAlphaAll({ self.SingleBarLarge, self.SingleBarSmall }, lower == xpBar and 0 or 1)
        SetAlphaAll({ self.SingleBarLargeUpper, self.SingleBarSmallUpper }, upper == xpBar and 0 or 1)
    end)
end

-- 2.4.3 a 7.x, y cualquier Classic que aun no tenga contenedores
local function HookMainMenuExpBar()
    StyleBar(MainMenuExpBar, ExhaustionLevelFillBar, MainMenuExpBar)
    local art = { "MainMenuXPBarTexture0", "MainMenuXPBarTexture1", "MainMenuXPBarTexture2", "MainMenuXPBarTexture3",
        "MainMenuXPBarTextureLeftCap", "MainMenuXPBarTextureRightCap", "MainMenuXPBarTextureMid" }
    for i = 1, 19 do art[#art + 1] = "MainMenuXPBarDiv" .. i end
    for _, name in ipairs(art) do
        if _G[name] then _G[name]:SetAlpha(0) end
    end
end

local function HookBars()
    local manager = StatusTrackingBarManager
    if manager and manager.barContainers then
        HookContainers(manager)
    elseif manager then
        HookManager(manager)
    elseif MainMenuExpBar then
        HookMainMenuExpBar()
    end
end

local function LoadSettings()
    ChocolateXPBarDB = ChocolateXPBarDB or {}
    local known = {}
    for _, flavor in ipairs(ns.FLAVORS) do known[flavor] = true end
    for key, default in pairs(ns.DEFAULTS) do
        if not known[ChocolateXPBarDB[key]] then ChocolateXPBarDB[key] = default end
    end
end

local loader = CreateFrame("Frame")
loader:RegisterEvent("ADDON_LOADED")
loader:RegisterEvent("PLAYER_LOGIN")
loader:SetScript("OnEvent", function(_, event, addon)
    if event == "ADDON_LOADED" then
        if addon == ns.NAME then
            LoadSettings()
            ns.CreateOptions()
        end
        return
    end
    HookBars()
end)
