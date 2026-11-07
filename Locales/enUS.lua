local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- IDIOMA POR DEFECTO (enUS / enGB)
-- ==========================================
-- Este fichero define TODAS las claves. Los demas Locales/<idioma>.lua se
-- cargan despues y sobrescriben las suyas; lo que falte se queda en ingles.

local L = ns.L or {}
ns.L = L

L["OPTIONS_TITLE"] = "Chocolate XP Bar Options"
L["GENERAL"] = "General"
L["DEFAULTS"] = "Reset to defaults"
L["VERSION"] = "Version:"
L["AUTHOR"] = "Author:"
L["LINKS"] = "Links"
L["COMMANDS"] = "Commands"
L["SELECT"] = "Select"
L["SELECT_TOOLTIP"] = "Selects the whole link so you can copy it with Ctrl+C. WoW does not let addons write to the clipboard, so the last step is yours."
L["CMD_OPEN"] = "Opens the options panel."
L["ABOUT_DESC"] = "Turns the experience bar into a chocolate bar with 20 portions. Choose in General the chocolate of the bar and of the rested bonus."
L["CHOCOLATE_HEADER"] = "Chocolate"
L["FILL"] = "Experience bar:"
L["FILL_TOOLTIP"] = "Chocolate used for the experience you already have."
L["BONUS"] = "Rested bonus:"
L["BONUS_TOOLTIP"] = "Chocolate used for the stretch of experience with rested bonus."
L["FLAVOR_MILK"] = "Milk chocolate"
L["FLAVOR_DARK"] = "Dark chocolate"
L["FLAVOR_WHITE"] = "White chocolate"
L["FLAVOR_RUBY"] = "Ruby chocolate"
L["FLAVOR_PRALINE"] = "Praline"
