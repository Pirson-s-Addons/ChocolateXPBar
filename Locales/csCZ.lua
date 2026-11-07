local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- ČEŠTINA (csCZ)
-- ==========================================
local locale = GetLocale()
if locale ~= "csCZ" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Možnosti Chocolate XP Bar"
L["GENERAL"] = "Obecné"
L["DEFAULTS"] = "Výchozí hodnoty"
L["VERSION"] = "Verze:"
L["AUTHOR"] = "Autor:"
L["LINKS"] = "Odkazy"
L["COMMANDS"] = "Příkazy"
L["SELECT"] = "Vybrat"
L["SELECT_TOOLTIP"] = "Vybere celý odkaz, abys ho mohl zkopírovat pomocí Ctrl+C. WoW nedovolí doplňkům zapisovat do schránky, takže poslední krok je na tobě."
L["CMD_OPEN"] = "Otevře nastavení."
L["ABOUT_DESC"] = "Promění ukazatel zkušeností v tabulku čokolády s 20 dílky. V části Obecné vybereš čokoládu ukazatele a bonusu za odpočinek."
L["CHOCOLATE_HEADER"] = "Čokoláda"
L["FILL"] = "Ukazatel zkušeností:"
L["FILL_TOOLTIP"] = "Čokoláda pro zkušenosti, které už máš."
L["BONUS"] = "Bonus za odpočinek:"
L["BONUS_TOOLTIP"] = "Čokoláda pro úsek zkušeností s bonusem za odpočinek."
L["FLAVOR_MILK"] = "Mléčná čokoláda"
L["FLAVOR_DARK"] = "Hořká čokoláda"
L["FLAVOR_WHITE"] = "Bílá čokoláda"
L["FLAVOR_RUBY"] = "Rubínová čokoláda"
L["FLAVOR_PRALINE"] = "Pralinka"
