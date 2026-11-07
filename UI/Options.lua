local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos
local L = ns.L

-- ==========================================
-- OPCIONES
-- ==========================================
-- Raiz "Acerca de" (UI/About.lua) y, colgando de ella, "General": un desplegable
-- de sabor para el relleno y otro para la bonificacion de descanso. La muestra
-- del panel enseña la eleccion aunque la barra no este en pantalla (nivel maximo).

local HEADER = "|cffC47FF3"
local LOGO = "Interface\\AddOns\\ChocolateXPBar\\img\\logo_cxb"

local function AddTooltip(widget, text)
    widget:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetText(text, nil, nil, nil, nil, true)
        GameTooltip:Show()
    end)
    widget:SetScript("OnLeave", function() GameTooltip:Hide() end)
end

local function CreateGeneral()
    local panel = CreateFrame("Frame", "ChocolateXPBarOptions", UIParent)
    panel.name = L.GENERAL
    ns.SetSize(panel, 615, 580)
    panel:Hide()
    local x = 16
    local refreshers = {}
    local function Refresh()
        for _, refresh in ipairs(refreshers) do refresh() end
    end

    local function Label(dx, y, text, template)
        local fs = panel:CreateFontString(nil, "ARTWORK", template or "GameFontHighlight")
        fs:SetPoint("TOPLEFT", dx, y)
        fs:SetText(text)
        return fs
    end
    local function Line(y)
        local line = panel:CreateTexture(nil, "ARTWORK")
        ns.SetSolidColor(line, 1, 1, 1, 0.1)
        ns.SetSize(line, 580, 1)
        line:SetPoint("TOPLEFT", x, y)
    end
    local function FlavorDropdown(name, y, key, text, tooltip)
        Label(x, y - 8, text)
        local dropdown = CreateFrame("Frame", name, panel, "UIDropDownMenuTemplate")
        dropdown:SetPoint("TOPLEFT", x + 190, y)
        ns.DropDown(UIDropDownMenu_SetWidth, dropdown, 180)
        AddTooltip(dropdown, tooltip)
        UIDropDownMenu_Initialize(dropdown, function()
            for _, flavor in ipairs(ns.FLAVORS) do
                local info = UIDropDownMenu_CreateInfo()
                info.text = L["FLAVOR_" .. flavor]
                info.value = flavor
                info.checked = ChocolateXPBarDB[key] == flavor
                info.func = function()
                    ChocolateXPBarDB[key] = flavor
                    Refresh()
                    ns.Apply()
                end
                UIDropDownMenu_AddButton(info)
            end
        end)
        refreshers[#refreshers + 1] = function()
            ns.DropDown(UIDropDownMenu_SetText, dropdown, L["FLAVOR_" .. ChocolateXPBarDB[key]])
        end
    end

    Label(x, -16, L.OPTIONS_TITLE, "GameFontNormalLarge")

    local logo = panel:CreateTexture(nil, "ARTWORK")
    ns.SetSize(logo, 110, 110)
    logo:SetPoint("TOPRIGHT", -38, -5)
    logo:SetTexture(LOGO)

    local version = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    version:SetPoint("TOP", logo, "BOTTOM", 0, -2)
    version:SetText("v" .. (ns.GetMetadata("Version") or "?"))

    Label(x, -56, HEADER .. L.CHOCOLATE_HEADER .. "|r", "GameFontNormal")
    FlavorDropdown("ChocolateXPBar_Fill", -78, "fill", L.FILL, L.FILL_TOOLTIP)
    FlavorDropdown("ChocolateXPBar_Bonus", -112, "bonus", L.BONUS, L.BONUS_TOOLTIP)

    -- Muestra: 4 porciones de relleno y 3 de bonificacion, como en la barra
    local PORTION = 60
    local function Sample(dx, portions, key)
        local sample = panel:CreateTexture(nil, "ARTWORK")
        ns.SetSize(sample, portions * PORTION, 14)
        sample:SetPoint("TOPLEFT", dx, -156)
        refreshers[#refreshers + 1] = function()
            sample:SetTexture(ns.TexturePath(ChocolateXPBarDB[key]))
            sample:SetTexCoord(0, portions / 20, 0, 1)
            if key == "bonus" then sample:SetVertexColor(ns.RestedTint()) end
        end
    end
    Sample(x, 4, "fill")
    Sample(x + 4 * PORTION, 3, "bonus")
    Line(-186)

    panel:SetScript("OnShow", Refresh)

    local reset = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    ns.SetSize(reset, 180, 26)
    reset:SetPoint("TOPLEFT", x, -204)
    reset:SetText(L.DEFAULTS)
    reset:SetScript("OnClick", function()
        for key, default in pairs(ns.DEFAULTS) do ChocolateXPBarDB[key] = default end
        Refresh()
        ns.Apply()
    end)

    return panel
end

function ns.CreateOptions()
    local root = ns.CreateAbout({
        name = "Chocolate XP Bar",
        logo = LOGO,
        icon = LOGO .. "_icon",
        github = "https://github.com/Pirson-s-Addons/ChocolateXPBar",
        curseforge = "https://www.curseforge.com/wow/addons/chocolate-xp-bar",
        commands = { { "/cxb", L.CMD_OPEN } },
    })
    ns.RegisterSubcategory(root, CreateGeneral())

    SLASH_CHOCOLATEXPBAR1 = "/cxb"
    SlashCmdList.CHOCOLATEXPBAR = ns.OpenConfig
end
