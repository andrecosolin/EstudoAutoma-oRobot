*** Settings ***

Documentation   Exercicio de variaveis sobre meses do ano

*** Variable ***

@{MESES_ANO}    Jan    Fev    Mar    Abr    Mai    Jun    Jul    Ago    Set    Out    Nov    Dez

*** Test Cases ***

Caso de teste Exercicio 01
    Meses do ano

Caso de teste Exercicio 02
    Mês do meu aniversário

*** Keywords ***

Meses do ano
    Log to console    Esses é o mês de: ${MESES_ANO[0]} de 2023
    Log to console    Esses é o mês de: ${MESES_ANO[1]} de 2023
    Log to console    Esses é o mês de: ${MESES_ANO[2]} de 2023
    Log to console    Esses é o mês de: ${MESES_ANO[3]} de 2023
    Log to console    Esses é o mês de: ${MESES_ANO[4]} de 2023
    Log to console    Esses é o mês de: ${MESES_ANO[5]} de 2023
    Log to console    Esses é o mês de: ${MESES_ANO[6]} de 2023
    Log to console    Esses é o mês de: ${MESES_ANO[7]} de 2023
    Log to console    Esses é o mês de: ${MESES_ANO[8]} de 2023
    Log to console    Esses é o mês de: ${MESES_ANO[9]} de 2023
    Log to console    Esses é o mês de: ${MESES_ANO[10]} de 2023
    Log to console    Esses é o mês de: ${MESES_ANO[11]} de 2023

Mês do meu aniversário
    Log To Console    mês do meu aniverário: ${MESES_ANO[6]}



