*** Settings ***
Library            RequestsLibrary
Resource           Locators.robot

*** Keywords ***
Pegar dados de um usuário específico
    GET        url=${HOST}/${ID}

Pega os dados de todos os usuários
    GET        url=${HOST}/${USERS}