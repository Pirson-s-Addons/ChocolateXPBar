local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- РУССКИЙ (ruRU)
-- ==========================================
local locale = GetLocale()
if locale ~= "ruRU" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Настройки Chocolate XP Bar"
L["GENERAL"] = "Общие"
L["DEFAULTS"] = "Значения по умолчанию"
L["VERSION"] = "Версия:"
L["AUTHOR"] = "Автор:"
L["LINKS"] = "Ссылки"
L["COMMANDS"] = "Команды"
L["SELECT"] = "Выделить"
L["SELECT_TOOLTIP"] = "Выделяет всю ссылку, чтобы её можно было скопировать с помощью Ctrl+C. WoW не позволяет аддонам писать в буфер обмена, поэтому последний шаг за вами."
L["CMD_OPEN"] = "Открывает настройки."
L["ABOUT_DESC"] = "Превращает полосу опыта в плитку шоколада из 20 долек. В разделе «Общие» можно выбрать шоколад полосы и бонуса за отдых."
L["CHOCOLATE_HEADER"] = "Шоколад"
L["FILL"] = "Полоса опыта:"
L["FILL_TOOLTIP"] = "Шоколад для уже набранного опыта."
L["BONUS"] = "Бонус за отдых:"
L["BONUS_TOOLTIP"] = "Шоколад для участка опыта с бонусом за отдых."
L["FLAVOR_MILK"] = "Молочный шоколад"
L["FLAVOR_DARK"] = "Тёмный шоколад"
L["FLAVOR_WHITE"] = "Белый шоколад"
L["FLAVOR_RUBY"] = "Рубиновый шоколад"
L["FLAVOR_PRALINE"] = "Пралине"
