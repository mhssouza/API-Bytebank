*** Settings ***
Library            RequestsLibrary

*** Variables ***
${HOST}            http://localhost:8000

#Rotas pro acesso
${SALDO}           saldo
${ID}              922fedb3-b981-480f-bff3-86b7808a263f    #substituir este ID pra pegar outro e dar certo o teste de vocês
${USERS}           users
${LOGIN}           login
${REGISTRAR}       register
${NOME}            nome
${SENHA}           senha