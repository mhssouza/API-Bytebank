*** Settings ***
Library        RequestsLibrary
Resource       ../Resources/keywords_POST.robot

*** Test Cases ***
Fazendo login com um usuário específico
    Fazer login utilizando os dados de um usuário