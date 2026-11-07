local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- TIẾNG VIỆT (viVN)
-- ==========================================
local locale = GetLocale()
if locale ~= "viVN" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Tùy chọn Chocolate XP Bar"
L["GENERAL"] = "Chung"
L["DEFAULTS"] = "Giá trị mặc định"
L["VERSION"] = "Phiên bản:"
L["AUTHOR"] = "Tác giả:"
L["LINKS"] = "Liên kết"
L["COMMANDS"] = "Lệnh"
L["SELECT"] = "Chọn"
L["SELECT_TOOLTIP"] = "Chọn toàn bộ liên kết để bạn có thể sao chép bằng Ctrl+C. WoW không cho phép addon ghi vào bộ nhớ tạm, nên bước cuối là của bạn."
L["CMD_OPEN"] = "Mở cài đặt."
L["ABOUT_DESC"] = "Biến thanh kinh nghiệm thành thanh sô-cô-la 20 miếng. Trong Chung, hãy chọn sô-cô-la cho thanh và cho thưởng nghỉ ngơi."
L["CHOCOLATE_HEADER"] = "Sô-cô-la"
L["FILL"] = "Thanh kinh nghiệm:"
L["FILL_TOOLTIP"] = "Sô-cô-la cho phần kinh nghiệm bạn đã có."
L["BONUS"] = "Thưởng nghỉ ngơi:"
L["BONUS_TOOLTIP"] = "Sô-cô-la cho đoạn kinh nghiệm có thưởng nghỉ ngơi."
L["FLAVOR_MILK"] = "Sô-cô-la sữa"
L["FLAVOR_DARK"] = "Sô-cô-la đen"
L["FLAVOR_WHITE"] = "Sô-cô-la trắng"
L["FLAVOR_RUBY"] = "Sô-cô-la hồng ngọc"
L["FLAVOR_PRALINE"] = "Praline"
