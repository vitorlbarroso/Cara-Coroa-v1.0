local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

--------------------------------------------------------------------------------
-- Código:
--------------------------------------------------------------------------------

print("Verificando o Script, aguarde!")

local comandoscript = 'caracoroa' -- Comando que será utilizado para jogar.

--------------------------------------------------------------------------------
-- Código:
--------------------------------------------------------------------------------

RegisterCommand(comandoscript, function(source,args,rawCommand) -- Registrando o comando.
    if source > 0 then -- Definindo se a Source do Player é maior que a do Sistema.
        TriggerClientEvent('chatMessage',-1,'A moeda girou e caiu:  '..(sorteiocaracoroa()))
    end -- Finaliza a Source.
end)

function sorteiocaracoroa() -- Iniciando a função de sorteio dos dados.
    local tabelacaracoroa = {"Cara","Coroa"} -- Tabela com os dados "Cara" e "Coroa".
    return tabelacaracoroa[math.random(#tabelacaracoroa)] -- Adentrando a tabela e criando uma math.random de acordo com a largura da tabela.
end -- Finaliza a Função.       
