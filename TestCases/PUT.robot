*** Settings ***
Library        RequestsLibrary
Resource       ../Resources/keywords_PUT.robot

*** Test Cases ***
Alterar o saldo de um usuário específico utilizando valores negativos
    Altera o saldo de um usuário por um valor negativo 922fedb3-b981-480f-bff3-86b7808a263f         -90000        40189
    #Este caso daria erro pois não faria sentido um banco aceitar valores negativos para alterações de saldo

Alterar o saldo de um usuário específico
    Altera o saldo do usuário 922fedb3-b981-480f-bff3-86b7808a263f        8000           200
    #O teste deu certo pois os dados de alteração foram positivos e validados

Alterar os dados de um usuário específico
    Altera o usuário 922fedb3-b981-480f-bff3-86b7808a263f    Matheus Souza Santos        SenhaParaTestes402        200
    #O teste deu certo pois os dois dados foram preenchidos e validados para alteração

Alterar apenas um dado do usuário
    Alterar um dado específico do usuário 922fedb3-b981-480f-bff3-86b7808a263f    Jorginho Santos        401        #senhaAlterada
    #Este caso daria errado pois o sistema não deveria aceitar a alteração de apenas um dos dados, pois o outro ficaria em branco, e impossibilitaria o usuário de logar no sistema