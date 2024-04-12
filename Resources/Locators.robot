*** Settings ***
Library            RequestsLibrary

*** Variables ***
${HOST}            http://localhost:3000

#Rotas pro acesso
${SALDO}           saldo
${ID}              922fedb3-b981-480f-bff3-86b7808a263f    #Pode substituir aqui pra pegar outro ID para os testes de vcs
${USERS}           users
${LOGIN}           login
${REGISTRAR}       register