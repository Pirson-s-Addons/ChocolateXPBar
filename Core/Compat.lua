-- El addon esta escrito contra la API moderna. Aqui vive lo que hace falta para
-- que el mismo codigo arranque en los clientes viejos de servidor privado
-- (2.4.3 a 9.2.5). Son las ramas de CursorGlowRGB/Core/Compat.lua.
--
-- Fuera de este fichero, una regla para no romper 2.4.3: nada de :SetSize(w, h),
-- que no existe; se usa ns.SetSize.
--
-- Carga EL PRIMERO: monta el namespace que recogen los demas ficheros.
-- Regla: detectar la FUNCION, no la version del cliente.

local _, ns = ...

-- Clientes < 3.0 cargan los ficheros sin argumentos: el namespace es el global
-- ChocolateXPBar y cada fichero lo recoge en la segunda linea de su cabecera.
ns = ns or ChocolateXPBar or {}
ChocolateXPBar = ns
ns.NAME = "ChocolateXPBar"

-- OJO: los Classic actuales (1.15, 2.5, 3.80, 5.5) y Forever (1.60) tienen version
-- mayor baja e interfaz MODERNA: nunca comparar por rango, solo la version exacta.
local MAJOR, MINOR = string.match((GetBuildInfo()), "^(%d+)%.(%d+)")
MAJOR, MINOR = tonumber(MAJOR) or 99, tonumber(MINOR) or 0

-- Region:SetSize no existe en 2.4.3
function ns.SetSize(region, w, h)
    region:SetWidth(w)
    region:SetHeight(h)
end

-- Texture:SetColorTexture llega en 7.0; antes, SetTexture con cuatro numeros
function ns.SetSolidColor(texture, r, g, b, a)
    if texture.SetColorTexture then
        texture:SetColorTexture(r, g, b, a)
    else
        texture:SetTexture(r, g, b, a)
    end
end

-- En 2.4.3, UIDropDownMenu_SetWidth y UIDropDownMenu_SetText reciben el marco el
-- ULTIMO; 3.0 lo paso delante (y 2.5 Classic ya lo lleva delante).
function ns.DropDown(func, frame, value)
    if MAJOR == 2 and MINOR < 5 then return func(value, frame) end
    return func(frame, value)
end

-- C_AddOns.GetAddOnMetadata llega en 10.1; el global de siempre ya no existe
function ns.GetMetadata(field)
    local get = (C_AddOns and C_AddOns.GetAddOnMetadata) or GetAddOnMetadata
    return get(ns.NAME, field)
end

-- Settings llega en 10.0. Antes, InterfaceOptions_AddCategory, que identifica la
-- categoria por el nombre del panel y la subcategoria por el nombre de su padre.
local hasSettings = (Settings and Settings.RegisterCanvasLayoutCategory) and true or false

function ns.RegisterCategory(panel)
    if hasSettings then
        local category = Settings.RegisterCanvasLayoutCategory(panel, panel.name)
        Settings.RegisterAddOnCategory(category)
        return category
    end
    InterfaceOptions_AddCategory(panel)
    return panel
end

function ns.RegisterSubcategory(parentCategory, panel)
    if hasSettings then
        local category = Settings.RegisterCanvasLayoutSubcategory(parentCategory, panel, panel.name)
        ns.categoryID = category:GetID()
        return category
    end
    panel.parent = parentCategory.name
    InterfaceOptions_AddCategory(panel)
    ns.categoryID = panel.name
    return panel
end

function ns.OpenConfig()
    if hasSettings then
        Settings.OpenToCategory(ns.categoryID)
        return
    end
    -- 2.4.3 solo trae OpenToFrame; desde 3.x, OpenToCategory. Fallo conocido del
    -- cliente antiguo: la primera llamada abre el marco, la segunda selecciona.
    local open = InterfaceOptionsFrame_OpenToCategory or InterfaceOptionsFrame_OpenToFrame
    open(ns.categoryID)
    open(ns.categoryID)
end
