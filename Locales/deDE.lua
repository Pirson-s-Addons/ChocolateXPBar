local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- DEUTSCH (deDE)
-- ==========================================
local locale = GetLocale()
if locale ~= "deDE" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Chocolate XP Bar – Optionen"
L["GENERAL"] = "Allgemein"
L["DEFAULTS"] = "Standardwerte"
L["VERSION"] = "Version:"
L["AUTHOR"] = "Autor:"
L["LINKS"] = "Links"
L["COMMANDS"] = "Befehle"
L["SELECT"] = "Auswählen"
L["SELECT_TOOLTIP"] = "Markiert den ganzen Link, damit du ihn mit Strg+C kopieren kannst. WoW erlaubt Addons nicht, in die Zwischenablage zu schreiben, den letzten Schritt machst also du."
L["CMD_OPEN"] = "Öffnet die Einstellungen."
L["ABOUT_DESC"] = "Verwandelt die Erfahrungsleiste in eine Tafel Schokolade mit 20 Stücken. Unter Allgemein wählst du die Schokolade der Leiste und des Erholungsbonus."
L["CHOCOLATE_HEADER"] = "Schokolade"
L["FILL"] = "Erfahrungsleiste:"
L["FILL_TOOLTIP"] = "Schokolade für die Erfahrung, die du bereits hast."
L["BONUS"] = "Erholungsbonus:"
L["BONUS_TOOLTIP"] = "Schokolade für den Erfahrungsabschnitt mit Erholungsbonus."
L["FLAVOR_MILK"] = "Milchschokolade"
L["FLAVOR_DARK"] = "Zartbitterschokolade"
L["FLAVOR_WHITE"] = "Weiße Schokolade"
L["FLAVOR_RUBY"] = "Ruby-Schokolade"
L["FLAVOR_PRALINE"] = "Praliné"
