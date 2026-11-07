local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- 한국어 (koKR)
-- ==========================================
local locale = GetLocale()
if locale ~= "koKR" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Chocolate XP Bar 설정"
L["GENERAL"] = "일반"
L["DEFAULTS"] = "기본값"
L["VERSION"] = "버전:"
L["AUTHOR"] = "제작자:"
L["LINKS"] = "링크"
L["COMMANDS"] = "명령어"
L["SELECT"] = "선택"
L["SELECT_TOOLTIP"] = "Ctrl+C로 복사할 수 있도록 링크 전체를 선택합니다. WoW는 애드온이 클립보드에 쓰는 것을 허용하지 않으므로 마지막 단계는 직접 해야 합니다."
L["CMD_OPEN"] = "설정을 엽니다."
L["ABOUT_DESC"] = "경험치 바를 20조각 초콜릿 바로 바꿉니다. 일반에서 바와 휴식 보너스의 초콜릿을 고를 수 있습니다."
L["CHOCOLATE_HEADER"] = "초콜릿"
L["FILL"] = "경험치 바:"
L["FILL_TOOLTIP"] = "이미 얻은 경험치에 쓰는 초콜릿입니다."
L["BONUS"] = "휴식 보너스:"
L["BONUS_TOOLTIP"] = "휴식 보너스가 적용되는 경험치 구간에 쓰는 초콜릿입니다."
L["FLAVOR_MILK"] = "밀크 초콜릿"
L["FLAVOR_DARK"] = "다크 초콜릿"
L["FLAVOR_WHITE"] = "화이트 초콜릿"
L["FLAVOR_RUBY"] = "루비 초콜릿"
L["FLAVOR_PRALINE"] = "프랄린"
