*** Settings ***
Library        RequestsLibrary
Resource       Locators.robot

*** Keywords ***
Altera o usuário ${ID}
    [Arguments]            ${NOME}                 ${SENHA}                ${STATUS}

    &{headers}             Create Dictionary       Content-type=application/json
    &{body}                Create Dictionary       nome=${NOME}    senha=${SENHA}

    PUT                    url=${HOST}/${USERS}/${ID}    headers=&{headers}    json=&{body}    expected_status=${STATUS}

Altera o saldo do usuário ${ID}
    [Arguments]            ${novoSaldo}            ${STATUS}

    &{headers}             Create Dictionary       Content-type=application/json
    &{body}                Create Dictionary       saldo=${novoSaldo}

    PUT                    url=${HOST}/${USERS}/${ID}/${SALDO}    headers=&{headers}    json=&{body}    expected_status=${STATUS}

Altera o saldo de um usuário por um valor negativo ${ID}
    [Arguments]            ${novoSaldo}            ${STATUS}

    &{headers}             Create Dictionary       Content-type=application/json
    &{body}                Create Dictionary       saldo=${novoSaldo}

    PUT                    url=${HOST}/${USERS}/${ID}/${SALDO}    headers=&{headers}    json=&{body}    expected_status=${STATUS}

Alterar um dado específico do usuário ${ID}
    [Arguments]            ${NOME}                 ${STATUS}        #${SENHA}

    &{headers}             Create Dictionary       Content-type=application/json
    &{body}                Create Dictionary       nome=${NOME}    #senha=${SENHA}

    PUT                    url=${HOST}/${USERS}/${ID}    headers=&{headers}    json=&{body}    expected_status=${STATUS}
