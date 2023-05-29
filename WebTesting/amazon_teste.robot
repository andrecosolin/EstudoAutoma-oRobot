*** Settings ***

Documentation    Essa suite testa o site da Amazon
Resource         ../WebTesting/amazon.resource
Test Setup       Abrir o navegador 
Test Teardown    Fechar o navegador


# Quando você quiser fazer algo antes da suite inteira, usar
# suite setup e suite teardown

*** Test Cases ***

Caso de teste 01 - Acesso ao menu "Ofertas do Dia"
    [Documentation]        Esse teste verifica o menu eletrônicos do site da Amazon
    ...                    e verifica a categoria Computadores e Infomática
    [Tags]                 menus

    Given Que Acesso a home page da amazon
    When Acessar o menu "Ofertas do Dia"
    Then O título da página deve ficar "Ofertas e Promoções | Amazon.com.br"
    And A categoria de alimento e bebidas deve ser exibida na página

Caso de teste 02 - Pesquisa de Produto
    [Documentation]            Esse teste verifica o menu eletrônicos do site da Amazon
    [Tags]                     busca_produtos

    Given Que Acesso a home page da amazon
    When Pesquisar pelo produto "Xbox Series S"
    Then Um produto da linha "Console Xbox Series S" deve ser mostrado na página   

# Sempre ver o log, primeira coisa é ver o log 
# -i(include) (nome da tag) para rodar só um caso de teste que desejar + teste
# -e(exclude) (nome da tag) que não deseja rodar + teste
# -d(directory file) ./(nome da pasta) + o teste
# Posso usar kayword implementadas dentro de keyword no bdd para ficar mais limpo e claro o passo a passo

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho

    Given Que Acesso a home page da amazon
    When Pesquisar pelo produto "Xbox Series S"
    And Um produto da linha "Console Xbox Series S" deve ser mostrado na página
    Then Adicionar o produto "Console Xbox Series S" no carrinho
    And Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
 
Caso de Teste 04 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho

    Given Que Acesso a home page da amazon
    And Pesquisar pelo produto "Xbox Series S"
    And Um produto da linha "Console Xbox Series S" deve ser mostrado na página
    When Adicionar o produto "Console Xbox Series S" no carrinho
    And Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Then Remover o produto "Console Xbox Series S" do carrinho
    And Verificar se o carrinho fica vazio




