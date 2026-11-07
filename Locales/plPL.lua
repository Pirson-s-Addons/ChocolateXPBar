local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- POLSKI (plPL)
-- ==========================================
local locale = GetLocale()
if locale ~= "plPL" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Opcje Chocolate XP Bar"
L["GENERAL"] = "Ogólne"
L["DEFAULTS"] = "Wartości domyślne"
L["VERSION"] = "Wersja:"
L["AUTHOR"] = "Autor:"
L["LINKS"] = "Linki"
L["COMMANDS"] = "Polecenia"
L["SELECT"] = "Zaznacz"
L["SELECT_TOOLTIP"] = "Zaznacza cały link, abyś mógł go skopiować skrótem Ctrl+C. WoW nie pozwala dodatkom zapisywać do schowka, więc ostatni krok należy do ciebie."
L["CMD_OPEN"] = "Otwiera ustawienia."
L["ABOUT_DESC"] = "Zamienia pasek doświadczenia w tabliczkę czekolady z 20 kostek. W sekcji Ogólne wybierzesz czekoladę paska i premii za odpoczynek."
L["CHOCOLATE_HEADER"] = "Czekolada"
L["FILL"] = "Pasek doświadczenia:"
L["FILL_TOOLTIP"] = "Czekolada dla zdobytego już doświadczenia."
L["BONUS"] = "Premia za odpoczynek:"
L["BONUS_TOOLTIP"] = "Czekolada dla odcinka doświadczenia z premią za odpoczynek."
L["FLAVOR_MILK"] = "Czekolada mleczna"
L["FLAVOR_DARK"] = "Czekolada gorzka"
L["FLAVOR_WHITE"] = "Czekolada biała"
L["FLAVOR_RUBY"] = "Czekolada rubinowa"
L["FLAVOR_PRALINE"] = "Pralina"
