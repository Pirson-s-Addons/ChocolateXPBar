local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- FRANÇAIS (frFR)
-- ==========================================
local locale = GetLocale()
if locale ~= "frFR" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Options de Chocolate XP Bar"
L["GENERAL"] = "Général"
L["DEFAULTS"] = "Valeurs par défaut"
L["VERSION"] = "Version :"
L["AUTHOR"] = "Auteur :"
L["LINKS"] = "Liens"
L["COMMANDS"] = "Commandes"
L["SELECT"] = "Sélectionner"
L["SELECT_TOOLTIP"] = "Sélectionne le lien entier pour que tu puisses le copier avec Ctrl+C. WoW ne laisse pas les addons écrire dans le presse-papiers, la dernière étape est donc pour toi."
L["CMD_OPEN"] = "Ouvre les réglages."
L["ABOUT_DESC"] = "Transforme la barre d'expérience en tablette de chocolat de 20 carrés. Dans Général, choisissez le chocolat de la barre et celui du bonus de repos."
L["CHOCOLATE_HEADER"] = "Chocolat"
L["FILL"] = "Barre d'expérience :"
L["FILL_TOOLTIP"] = "Chocolat de l'expérience que vous avez déjà."
L["BONUS"] = "Bonus de repos :"
L["BONUS_TOOLTIP"] = "Chocolat de la portion d'expérience avec bonus de repos."
L["FLAVOR_MILK"] = "Chocolat au lait"
L["FLAVOR_DARK"] = "Chocolat noir"
L["FLAVOR_WHITE"] = "Chocolat blanc"
L["FLAVOR_RUBY"] = "Chocolat rubis"
L["FLAVOR_PRALINE"] = "Praliné"
