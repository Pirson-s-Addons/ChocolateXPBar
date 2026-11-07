local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- ITALIANO (itIT)
-- ==========================================
local locale = GetLocale()
if locale ~= "itIT" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Opzioni di Chocolate XP Bar"
L["GENERAL"] = "Generale"
L["DEFAULTS"] = "Valori predefiniti"
L["VERSION"] = "Versione:"
L["AUTHOR"] = "Autore:"
L["LINKS"] = "Collegamenti"
L["COMMANDS"] = "Comandi"
L["SELECT"] = "Seleziona"
L["SELECT_TOOLTIP"] = "Seleziona l'intero link così puoi copiarlo con Ctrl+C. WoW non permette agli addon di scrivere negli appunti, quindi l'ultimo passo spetta a te."
L["CMD_OPEN"] = "Apre le impostazioni."
L["ABOUT_DESC"] = "Trasforma la barra dell'esperienza in una tavoletta di cioccolato da 20 quadretti. In Generale scegli il cioccolato della barra e quello del bonus di riposo."
L["CHOCOLATE_HEADER"] = "Cioccolato"
L["FILL"] = "Barra dell'esperienza:"
L["FILL_TOOLTIP"] = "Cioccolato dell'esperienza che hai già."
L["BONUS"] = "Bonus di riposo:"
L["BONUS_TOOLTIP"] = "Cioccolato del tratto di esperienza con bonus di riposo."
L["FLAVOR_MILK"] = "Cioccolato al latte"
L["FLAVOR_DARK"] = "Cioccolato fondente"
L["FLAVOR_WHITE"] = "Cioccolato bianco"
L["FLAVOR_RUBY"] = "Cioccolato ruby"
L["FLAVOR_PRALINE"] = "Pralinato"
