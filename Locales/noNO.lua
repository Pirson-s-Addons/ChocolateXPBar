local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- NORSK (noNO)
-- ==========================================
local locale = GetLocale()
if locale ~= "noNO" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Chocolate XP Bar – alternativer"
L["GENERAL"] = "Generelt"
L["DEFAULTS"] = "Standardverdier"
L["VERSION"] = "Versjon:"
L["AUTHOR"] = "Forfatter:"
L["LINKS"] = "Lenker"
L["COMMANDS"] = "Kommandoer"
L["SELECT"] = "Merk"
L["SELECT_TOOLTIP"] = "Merker hele lenken slik at du kan kopiere den med Ctrl+C. WoW lar ikke tillegg skrive til utklippstavlen, så det siste steget tar du selv."
L["CMD_OPEN"] = "Åpner innstillingene."
L["ABOUT_DESC"] = "Gjør erfaringslinjen om til en sjokoladeplate med 20 biter. Under Generelt velger du sjokolade for linjen og hvilebonusen."
L["CHOCOLATE_HEADER"] = "Sjokolade"
L["FILL"] = "Erfaringslinje:"
L["FILL_TOOLTIP"] = "Sjokolade for erfaringen du allerede har."
L["BONUS"] = "Hvilebonus:"
L["BONUS_TOOLTIP"] = "Sjokolade for erfaringsdelen med hvilebonus."
L["FLAVOR_MILK"] = "Melkesjokolade"
L["FLAVOR_DARK"] = "Mørk sjokolade"
L["FLAVOR_WHITE"] = "Hvit sjokolade"
L["FLAVOR_RUBY"] = "Rubinsjokolade"
L["FLAVOR_PRALINE"] = "Praliné"
