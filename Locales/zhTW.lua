local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- 繁體中文 (zhTW)
-- ==========================================
local locale = GetLocale()
if locale ~= "zhTW" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Chocolate XP Bar 選項"
L["GENERAL"] = "一般"
L["DEFAULTS"] = "預設值"
L["VERSION"] = "版本："
L["AUTHOR"] = "作者："
L["LINKS"] = "連結"
L["COMMANDS"] = "指令"
L["SELECT"] = "選取"
L["SELECT_TOOLTIP"] = "選取整個連結，讓你可以用 Ctrl+C 複製。WoW 不允許插件寫入剪貼簿，所以最後一步要由你完成。"
L["CMD_OPEN"] = "開啟設定。"
L["ABOUT_DESC"] = "把經驗條變成一塊有 20 小塊的巧克力。在「一般」中選擇經驗條和休息獎勵的巧克力。"
L["CHOCOLATE_HEADER"] = "巧克力"
L["FILL"] = "經驗條："
L["FILL_TOOLTIP"] = "已獲得經驗使用的巧克力。"
L["BONUS"] = "休息獎勵："
L["BONUS_TOOLTIP"] = "有休息獎勵的經驗段使用的巧克力。"
L["FLAVOR_MILK"] = "牛奶巧克力"
L["FLAVOR_DARK"] = "黑巧克力"
L["FLAVOR_WHITE"] = "白巧克力"
L["FLAVOR_RUBY"] = "紅寶石巧克力"
L["FLAVOR_PRALINE"] = "果仁糖"
