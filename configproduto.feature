    #lnguage: pt

    US-0001 Configurar produto

    Funcionalidade: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
        Dado que eu acesse a pagina de produto

    Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
        Quando eu nao selecionar a cor, tamanho ou quantidade
        Então deve exibir uma mensagem de obrigatoriedade em cada uma das opcoes de configuracao do produto

    Cenário: Permitir apenas 10 produtos por venda
        Quando eu tentar adicionar o produto a uma quantidade maior que 10
        Então deve exibir uma mensagem de limite de 10 produtos por compra

    Cenário: Botão “limpar” volta a página ao estado original
        Quando eu clicar no botao 'limpar'
        Então todas as alteracoes feitas devem voltar ao estado padrao do produto