*** Settings ***
Library            RequestsLibrary
Resource           Locators.robot

*** Keywords ***
Fazer login utilizando os dados de um usuário
    POST        url=${HOST}/${USERS}/${LOGIN}