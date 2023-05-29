*** Settings ***

Documentation   keyword, onde ela nos produzirá um e-mail customizado
Library         FakerLibrary    locale=pt_br
Library         String

*** Variable ***

${NOMEFAKE}=             FakerLibrary.First Name
${SOBRENOMEFAKE}=        FakerLibrary.Last Name
${E-MAIL}                @testerobot.com

*** Test Cases ***

Gerar um e-mail customizado
    ${E_MAIL_CRIADO}    Criando e-mail personalizado    ${NOMEFAKE}    ${SOBRENOMEFAKE}
    Log To Console    ${E_MAIL_CRIADO}

*** Keywords ***

Criando e-mail personalizado        
    [Arguments]     ${NOME}    ${SOBRENOME}
    ${PALAVRA_ALEATORIA}     Generate Random String    
    ${E-MAIL_CRIADO}      Catenate   ${NOME}${SOBRENOME}${PALAVRA_ALEATORIA}${E-MAIL}
    [Return]    ${E-MAIL_CRIADO}
    Log To Console    E-mail personalizado: ${E-MAIL_CRIADO}


    
# *** Settings ***
# Library   String

# *** Variables ***
# &{PESSOA}   nome=May   sobrenome=Fernandes

# *** Test Cases ***
# Imprimindo um e-mail customizado e aleatório
#     ${EMAIL_CRIADO}    Criar e-mail customizado e aleatório    ${PESSOA.nome}    ${PESSOA.sobrenome}
#     Log To Console     ${EMAIL_CRIADO}


# *** Keywords ***
# Criar e-mail customizado e aleatório
#     [Arguments]       ${NOME}  ${SOBRENOME}
#     ${ALEATORIA}      Generate Random String
#     ${EMAIL_FINAL}    Set Variable    ${NOME}${SOBRENOME}${ALEATORIA}@testerobot.com
#     [Return]          ${EMAIL_FINAL}

    