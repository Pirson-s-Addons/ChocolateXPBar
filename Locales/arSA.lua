local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- العربية (arSA)
-- ==========================================
local locale = GetLocale()
if locale ~= "arSA" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "خيارات Chocolate XP Bar"
L["GENERAL"] = "عام"
L["DEFAULTS"] = "القيم الافتراضية"
L["VERSION"] = "الإصدار:"
L["AUTHOR"] = "المؤلف:"
L["LINKS"] = "روابط"
L["COMMANDS"] = "الأوامر"
L["SELECT"] = "تحديد"
L["SELECT_TOOLTIP"] = "يحدد الرابط كاملاً لتتمكن من نسخه باستخدام Ctrl+C. لا تسمح WoW للإضافات بالكتابة في الحافظة، لذا الخطوة الأخيرة عليك."
L["CMD_OPEN"] = "يفتح الإعدادات."
L["ABOUT_DESC"] = "يحوّل شريط الخبرة إلى لوح شوكولاتة من 20 قطعة. اختر في «عام» شوكولاتة الشريط وشوكولاتة مكافأة الراحة."
L["CHOCOLATE_HEADER"] = "شوكولاتة"
L["FILL"] = "شريط الخبرة:"
L["FILL_TOOLTIP"] = "الشوكولاتة المستخدمة للخبرة التي لديك."
L["BONUS"] = "مكافأة الراحة:"
L["BONUS_TOOLTIP"] = "الشوكولاتة المستخدمة لجزء الخبرة الذي فيه مكافأة الراحة."
L["FLAVOR_MILK"] = "شوكولاتة بالحليب"
L["FLAVOR_DARK"] = "شوكولاتة داكنة"
L["FLAVOR_WHITE"] = "شوكولاتة بيضاء"
L["FLAVOR_RUBY"] = "شوكولاتة ياقوتية"
L["FLAVOR_PRALINE"] = "برالين"
