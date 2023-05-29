*** Settings ***
Documentation    Exercicio de repetições

*** Variables ***

@{NUMEROS}    1  2  5  9  15  3  15  10  9

*** Test Cases ***

Teste de imprimir numeros quando solicitado
    Imprimir somente os numero 5 e 10

*** Keywords ***

Imprimir somente os numero 5 e 10
    Log To Console     ${\n}

    FOR  ${numero}    IN    ${NUMEROS}
        IF  ${numero} == 5
            Log To Console    Eu sou o número 5!
        
        ELSE IF  ${numero} == 10
            Log To Console    Eu sou o número 10!
        
        ELSE
            Log To Console    Eu não sou o número 5 e nem 10! ${\n} Sou o número: ${numero} 
            
        END
    END
        