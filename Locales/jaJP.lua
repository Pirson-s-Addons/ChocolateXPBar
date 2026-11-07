local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- 日本語 (jaJP)
-- ==========================================
local locale = GetLocale()
if locale ~= "jaJP" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Chocolate XP Bar オプション"
L["GENERAL"] = "一般"
L["DEFAULTS"] = "デフォルト値"
L["VERSION"] = "バージョン："
L["AUTHOR"] = "作者："
L["LINKS"] = "リンク"
L["COMMANDS"] = "コマンド"
L["SELECT"] = "選択"
L["SELECT_TOOLTIP"] = "Ctrl+Cでコピーできるようにリンク全体を選択します。WoWはアドオンがクリップボードに書き込むことを許可していないため、最後の手順はご自身で行ってください。"
L["CMD_OPEN"] = "設定を開きます。"
L["ABOUT_DESC"] = "経験値バーを20ピースの板チョコに変えます。「一般」でバーと休息ボーナスのチョコレートを選べます。"
L["CHOCOLATE_HEADER"] = "チョコレート"
L["FILL"] = "経験値バー:"
L["FILL_TOOLTIP"] = "獲得済みの経験値に使うチョコレートです。"
L["BONUS"] = "休息ボーナス:"
L["BONUS_TOOLTIP"] = "休息ボーナスのある経験値の区間に使うチョコレートです。"
L["FLAVOR_MILK"] = "ミルクチョコレート"
L["FLAVOR_DARK"] = "ダークチョコレート"
L["FLAVOR_WHITE"] = "ホワイトチョコレート"
L["FLAVOR_RUBY"] = "ルビーチョコレート"
L["FLAVOR_PRALINE"] = "プラリネ"
