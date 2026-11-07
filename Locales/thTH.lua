local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- ไทย (thTH)
-- ==========================================
local locale = GetLocale()
if locale ~= "thTH" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "ตัวเลือก Chocolate XP Bar"
L["GENERAL"] = "ทั่วไป"
L["DEFAULTS"] = "ค่าเริ่มต้น"
L["VERSION"] = "เวอร์ชัน:"
L["AUTHOR"] = "ผู้สร้าง:"
L["LINKS"] = "ลิงก์"
L["COMMANDS"] = "คำสั่ง"
L["SELECT"] = "เลือก"
L["SELECT_TOOLTIP"] = "เลือกลิงก์ทั้งหมดเพื่อให้คุณคัดลอกด้วย Ctrl+C ได้ WoW ไม่อนุญาตให้แอดออนเขียนลงคลิปบอร์ด ขั้นตอนสุดท้ายจึงเป็นของคุณ"
L["CMD_OPEN"] = "เปิดการตั้งค่า"
L["ABOUT_DESC"] = "เปลี่ยนแถบประสบการณ์ให้เป็นแท่งช็อกโกแลต 20 ชิ้น เลือกช็อกโกแลตของแถบและโบนัสพักผ่อนได้ในส่วนทั่วไป"
L["CHOCOLATE_HEADER"] = "ช็อกโกแลต"
L["FILL"] = "แถบประสบการณ์:"
L["FILL_TOOLTIP"] = "ช็อกโกแลตสำหรับประสบการณ์ที่มีอยู่แล้ว"
L["BONUS"] = "โบนัสพักผ่อน:"
L["BONUS_TOOLTIP"] = "ช็อกโกแลตสำหรับช่วงประสบการณ์ที่มีโบนัสพักผ่อน"
L["FLAVOR_MILK"] = "ช็อกโกแลตนม"
L["FLAVOR_DARK"] = "ดาร์กช็อกโกแลต"
L["FLAVOR_WHITE"] = "ไวท์ช็อกโกแลต"
L["FLAVOR_RUBY"] = "รูบี้ช็อกโกแลต"
L["FLAVOR_PRALINE"] = "ปราลีน"
