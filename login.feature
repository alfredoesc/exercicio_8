    #language: pt
    
    US-0002 Login na plataforma

    Funcionalidade: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto:
    Dado que eu acesse a pagina de autenticação do portal EBAC-SHOP

    Cenário: Dados válidos vai para a tela de checkout
        Quando eu inserir o usuario "us1@email.com.br"
        E a senha "12345"
        Então deve redirecionar a pagina para a tela de checkout

    Cenário: Campos inválidos deve exibir uma mensagem “Usuário ou senha inválidos”
        Quando eu digitar o usuario "djasidjoiaj@ebac.com.br"
        E a senha "1f3f3432"
        Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"