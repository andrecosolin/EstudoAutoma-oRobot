*** Settings ***

Library   SeleniumLibrary

*** Variables ***

${URL}                                https://www.amazon.com.br/
${OFERTADODIA}                        xpath=//a[contains(.,'Ofertas do Dia')]
${MENU_OFERTADODIA}                   //a[@href='/deals?ref_=nav_cs_gb'][contains(.,'Ofertas do Dia')]
${TEXTO_ALIMENTOSEBEBIDAS}            Alimentos e Bebidas
${HEADER_OFERTASEPROMOCOES}           //h1[@class='a-size-extra-large a-spacing-micro'][contains(.,'Ofertas e Promoções')]
${ALIMENTOSEBEBIDAS}                  xpath=//span[@class='GridPresets-module__gridPresetsLargeItem_2xPgV2VoJCncjGPj18in1h'][contains(.,'Alimentos e Bebidas')]
${BOTAO_CARRINHO}                     add-to-cart-button

*** Keywords ***

Abrir o navegador
    Open Browser        browser=chrome

Fechar o navegador
    Capture Page Screenshot
    Close Browser
    
Que acesso a home page da amazon
    Go To                            url=${URL}
    Wait Until Element Is Visible    locator=${OFERTADODIA}

Acessar o menu "Ofertas do Dia"    
    Click Element                    locator=${MENU_OFERTADODIA}
    Wait Until Page Contains         text=${TEXTO_ALIMENTOSEBEBIDAS}

O título da página deve ficar "${TITULO}"
    Title Should Be                  title=${TITULO}

A categoria de alimento e bebidas deve ser exibida na página
    Element Should Be Visible        locator=${ALIMENTOSEBEBIDAS}

Pesquisar pelo produto "${PRODUTO}"
    Input Text                       locator=id=twotabsearchtextbox    text=${PRODUTO}
    Click Element                    locator=nav-search-submit-button 

Um produto da linha "${PRODUTO}" deve ser mostrado na página
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[2]

Adicionar o produto "Console Xbox Series S" no carrinho
    Click Image                      locator=//img[contains(@alt,'Console Xbox Series S')]
    Wait Until Element Is Visible    locator=${BOTAO_CARRINHO}
    Click Button                     locator=${BOTAO_CARRINHO}

Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Wait Until Element Is Visible    locator=//span[contains(.,'Adicionado ao carrinho')]

Remover o produto "Console Xbox Series S" do carrinho
    Click Element                    locator=//a[@data-csa-c-type='button']
    Wait Until Element Is Visible    locator=//h1[contains(.,'Carrinho de compras')]
    
Verificar se o carrinho fica vazio
    Click Element                    locator=//input[@value='Excluir']
    Wait Until Page Contains         text=Seu carrinho de compras da Amazon está vazio.


