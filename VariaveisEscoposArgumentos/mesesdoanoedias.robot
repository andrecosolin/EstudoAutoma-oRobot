*** Settings ***

Documentation   Exercicio de variaveis sobre meses do ano

*** Variable ***

@{MESES_ANO}    Jan    Fev    Mar    Abr    Mai    Jun    Jul    Ago    Set    Out    Nov    Dez
@{DIAS_MES}     31     28     31     30     31     30     31     30     31     30     31     30 

&{MESES}        mês=${MESES_ANO}    dias=${DIAS_MES}

*** Test Cases ***

Caso de teste Exercicio 01
    Meses do ano

# Caso de teste Exercicio 02
#     Mês do meu aniversário

*** Keywords ***

Meses do ano
    
    Log To Console    Estes é o mês de ${MESES.mês[0]} e estes são os dias dele: ${MESES.dias[0]}
    Log To Console    Estes é o mês de ${MESES.mês[1]} e estes são os dias dele: ${MESES.dias[1]}
    Log To Console    Estes é o mês de ${MESES.mês[2]} e estes são os dias dele: ${MESES.dias[2]}
    Log To Console    Estes é o mês de ${MESES.mês[3]} e estes são os dias dele: ${MESES.dias[3]}
    Log To Console    Estes é o mês de ${MESES.mês[4]} e estes são os dias dele: ${MESES.dias[4]}
    Log To Console    Estes é o mês de ${MESES.mês[5]} e estes são os dias dele: ${MESES.dias[5]}
    Log To Console    Estes é o mês de ${MESES.mês[6]} e estes são os dias dele: ${MESES.dias[6]}
    Log To Console    Estes é o mês de ${MESES.mês[7]} e estes são os dias dele: ${MESES.dias[7]}
    Log To Console    Estes é o mês de ${MESES.mês[8]} e estes são os dias dele: ${MESES.dias[8]}
    Log To Console    Estes é o mês de ${MESES.mês[9]} e estes são os dias dele: ${MESES.dias[9]}
    Log To Console    Estes é o mês de ${MESES.mês[10]} e estes são os dias dele: ${MESES.dias[10]}
    Log To Console    Estes é o mês de ${MESES.mês[11]} e estes são os dias dele: ${MESES.dias[10]}