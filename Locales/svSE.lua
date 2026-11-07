local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- SVENSKA (svSE)
-- ==========================================
local locale = GetLocale()
if locale ~= "svSE" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Chocolate XP Bar – alternativ"
L["GENERAL"] = "Allmänt"
L["DEFAULTS"] = "Standardvärden"
L["VERSION"] = "Version:"
L["AUTHOR"] = "Författare:"
L["LINKS"] = "Länkar"
L["COMMANDS"] = "Kommandon"
L["SELECT"] = "Markera"
L["SELECT_TOOLTIP"] = "Markerar hela länken så att du kan kopiera den med Ctrl+C. WoW låter inte tillägg skriva till urklipp, så det sista steget gör du själv."
L["CMD_OPEN"] = "Öppnar inställningarna."
L["ABOUT_DESC"] = "Gör om erfarenhetsmätaren till en chokladkaka med 20 bitar. Under Allmänt väljer du choklad för mätaren och vilobonusen."
L["CHOCOLATE_HEADER"] = "Choklad"
L["FILL"] = "Erfarenhetsmätare:"
L["FILL_TOOLTIP"] = "Choklad för erfarenheten du redan har."
L["BONUS"] = "Vilobonus:"
L["BONUS_TOOLTIP"] = "Choklad för erfarenhetsdelen med vilobonus."
L["FLAVOR_MILK"] = "Mjölkchoklad"
L["FLAVOR_DARK"] = "Mörk choklad"
L["FLAVOR_WHITE"] = "Vit choklad"
L["FLAVOR_RUBY"] = "Rubinchoklad"
L["FLAVOR_PRALINE"] = "Praliné"
