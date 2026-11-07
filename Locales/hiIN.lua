local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- हिन्दी (hiIN)
-- ==========================================
local locale = GetLocale()
if locale ~= "hiIN" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Chocolate XP Bar विकल्प"
L["GENERAL"] = "सामान्य"
L["DEFAULTS"] = "डिफ़ॉल्ट मान"
L["VERSION"] = "संस्करण:"
L["AUTHOR"] = "लेखक:"
L["LINKS"] = "लिंक"
L["COMMANDS"] = "कमांड"
L["SELECT"] = "चुनें"
L["SELECT_TOOLTIP"] = "पूरा लिंक चुनता है ताकि आप उसे Ctrl+C से कॉपी कर सकें। WoW ऐडऑन को क्लिपबोर्ड में लिखने नहीं देता, इसलिए आखिरी कदम आपका है।"
L["CMD_OPEN"] = "सेटिंग्स खोलता है।"
L["ABOUT_DESC"] = "अनुभव बार को 20 टुकड़ों वाले चॉकलेट बार में बदल देता है। सामान्य में बार और विश्राम बोनस की चॉकलेट चुनें।"
L["CHOCOLATE_HEADER"] = "चॉकलेट"
L["FILL"] = "अनुभव बार:"
L["FILL_TOOLTIP"] = "आपके पास मौजूद अनुभव के लिए चॉकलेट।"
L["BONUS"] = "विश्राम बोनस:"
L["BONUS_TOOLTIP"] = "विश्राम बोनस वाले अनुभव हिस्से के लिए चॉकलेट।"
L["FLAVOR_MILK"] = "मिल्क चॉकलेट"
L["FLAVOR_DARK"] = "डार्क चॉकलेट"
L["FLAVOR_WHITE"] = "व्हाइट चॉकलेट"
L["FLAVOR_RUBY"] = "रूबी चॉकलेट"
L["FLAVOR_PRALINE"] = "प्रालीन"
