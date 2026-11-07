local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- ESPAÑOL (esES / esMX)
-- ==========================================
local locale = GetLocale()
if locale ~= "esES" and locale ~= "esMX" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Opciones de Chocolate XP Bar"
L["GENERAL"] = "General"
L["DEFAULTS"] = "Valores por defecto"
L["VERSION"] = "Versión:"
L["AUTHOR"] = "Autor:"
L["LINKS"] = "Enlaces"
L["COMMANDS"] = "Comandos"
L["SELECT"] = "Seleccionar"
L["SELECT_TOOLTIP"] = "Selecciona el enlace entero para que puedas copiarlo con Ctrl+C. WoW no deja a los addons escribir en el portapapeles, así que el último paso lo das tú."
L["CMD_OPEN"] = "Abre el panel de opciones."
L["ABOUT_DESC"] = "Convierte la barra de experiencia en una tableta de chocolate de 20 porciones. En General eliges el chocolate de la barra y el de la bonificación de descanso."
L["CHOCOLATE_HEADER"] = "Chocolate"
L["FILL"] = "Barra de experiencia:"
L["FILL_TOOLTIP"] = "Chocolate de la experiencia que ya tienes."
L["BONUS"] = "Bonificación de descanso:"
L["BONUS_TOOLTIP"] = "Chocolate del tramo de experiencia con bonificación de descanso."
L["FLAVOR_MILK"] = "Chocolate con leche"
L["FLAVOR_DARK"] = "Chocolate negro"
L["FLAVOR_WHITE"] = "Chocolate blanco"
L["FLAVOR_RUBY"] = "Chocolate rubí"
L["FLAVOR_PRALINE"] = "Praliné"
