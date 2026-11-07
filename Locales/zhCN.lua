local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- 简体中文 (zhCN)
-- ==========================================
local locale = GetLocale()
if locale ~= "zhCN" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Chocolate XP Bar 选项"
L["GENERAL"] = "常规"
L["DEFAULTS"] = "默认值"
L["VERSION"] = "版本："
L["AUTHOR"] = "作者："
L["LINKS"] = "链接"
L["COMMANDS"] = "命令"
L["SELECT"] = "选择"
L["SELECT_TOOLTIP"] = "选中整个链接，以便你用 Ctrl+C 复制。WoW 不允许插件写入剪贴板，所以最后一步需要你自己完成。"
L["CMD_OPEN"] = "打开设置。"
L["ABOUT_DESC"] = "把经验条变成一块有 20 小块的巧克力。在“常规”中选择经验条和休息奖励的巧克力。"
L["CHOCOLATE_HEADER"] = "巧克力"
L["FILL"] = "经验条："
L["FILL_TOOLTIP"] = "已获得经验使用的巧克力。"
L["BONUS"] = "休息奖励："
L["BONUS_TOOLTIP"] = "有休息奖励的经验段使用的巧克力。"
L["FLAVOR_MILK"] = "牛奶巧克力"
L["FLAVOR_DARK"] = "黑巧克力"
L["FLAVOR_WHITE"] = "白巧克力"
L["FLAVOR_RUBY"] = "红宝石巧克力"
L["FLAVOR_PRALINE"] = "果仁糖"
