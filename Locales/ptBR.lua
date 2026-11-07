local _, ns = ...
ns = ns or ChocolateXPBar -- clientes < 3.0 no pasan argumentos

-- ==========================================
-- PORTUGUÊS (ptBR)
-- ==========================================
local locale = GetLocale()
if locale ~= "ptBR" then return end
local L = ns.L

L["OPTIONS_TITLE"] = "Opções do Chocolate XP Bar"
L["GENERAL"] = "Geral"
L["DEFAULTS"] = "Valores padrão"
L["VERSION"] = "Versão:"
L["AUTHOR"] = "Autor:"
L["LINKS"] = "Links"
L["COMMANDS"] = "Comandos"
L["SELECT"] = "Selecionar"
L["SELECT_TOOLTIP"] = "Seleciona o link inteiro para você copiá-lo com Ctrl+C. O WoW não deixa addons escreverem na área de transferência, então o último passo é seu."
L["CMD_OPEN"] = "Abre as configurações."
L["ABOUT_DESC"] = "Transforma a barra de experiência em uma barra de chocolate com 20 pedaços. Em Geral, escolha o chocolate da barra e o do bônus de descanso."
L["CHOCOLATE_HEADER"] = "Chocolate"
L["FILL"] = "Barra de experiência:"
L["FILL_TOOLTIP"] = "Chocolate da experiência que você já tem."
L["BONUS"] = "Bônus de descanso:"
L["BONUS_TOOLTIP"] = "Chocolate do trecho de experiência com bônus de descanso."
L["FLAVOR_MILK"] = "Chocolate ao leite"
L["FLAVOR_DARK"] = "Chocolate amargo"
L["FLAVOR_WHITE"] = "Chocolate branco"
L["FLAVOR_RUBY"] = "Chocolate rubi"
L["FLAVOR_PRALINE"] = "Praliné"
