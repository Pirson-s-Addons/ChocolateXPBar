local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- TÜRKÇE (trTR)
-- ==========================================
local locale = GetLocale()
if locale ~= "trTR" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Chocolate XP Bar Seçenekleri"
L["GENERAL"] = "Genel"
L["DEFAULTS"] = "Varsayılan değerler"
L["VERSION"] = "Sürüm:"
L["AUTHOR"] = "Yazar:"
L["LINKS"] = "Bağlantılar"
L["COMMANDS"] = "Komutlar"
L["SELECT"] = "Seç"
L["SELECT_TOOLTIP"] = "Ctrl+C ile kopyalayabilmen için bağlantının tamamını seçer. WoW eklentilerin panoya yazmasına izin vermez, bu yüzden son adım sana kalıyor."
L["CMD_OPEN"] = "Ayarları açar."
L["ABOUT_DESC"] = "Tecrübe çubuğunu 20 parçalı bir çikolata tabletine dönüştürür. Genel bölümünde çubuğun ve dinlenme bonusunun çikolatasını seçersin."
L["CHOCOLATE_HEADER"] = "Çikolata"
L["FILL"] = "Tecrübe çubuğu:"
L["FILL_TOOLTIP"] = "Sahip olduğun tecrübe için kullanılan çikolata."
L["BONUS"] = "Dinlenme bonusu:"
L["BONUS_TOOLTIP"] = "Dinlenme bonuslu tecrübe bölümü için kullanılan çikolata."
L["FLAVOR_MILK"] = "Sütlü çikolata"
L["FLAVOR_DARK"] = "Bitter çikolata"
L["FLAVOR_WHITE"] = "Beyaz çikolata"
L["FLAVOR_RUBY"] = "Yakut çikolata"
L["FLAVOR_PRALINE"] = "Pralin"
