    #language: pt

    US-0003 Tela de cadastro - Checkout

    Funcionalidade: Tela de cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Contexto:
        Dado que eu acesse a pagina de checkout

    Cenário: Dados obrigatórios, marcados com asteriscos
        Quando eu digitar todos os dados obrigatórios
        Então o sistema deve cadastrar com sucesso o checkout

    Cenário: Não permitir campo e-mail com formato inválido.
        Quando eu digitar meu e-mail com formato invalido
        Então o sistema deve exibir uma mensagem de erro

    Esquema do cenário: Ao cadastrar com campos vazios, exibir mensagem.
        Quando eu com os campos <nome>, <sobrenome>, <pais>, <endereço>, <cidade>, <cep>, <telefone> e <e-mail>
		E clicar no botão "finalizar compra"
        Então o sistema vai exibir uma <mensagem> de alerta

        Exemplos:
            | nome      | sobrenome | pais      | endereco  | cidade    | cep       | telefone  | e-mail    	| mensagem                  |
			| 	 		| Silva		| Brasil	| Rua 1		| Ijuí		| 90000-200	| 993239301	| hsilva@bol.com| "nome e obrigatorio"      |
			| Humberto	|			| Brasil	| Rua 1		| Ijuí		| 90000-200	| 993239301	| hsilva@bol.com| "sobrenome e obrigatorio" |
            | Humberto	| Silva		|			| Rua 1		| Ijuí		| 90000-200	| 993239301	| hsilva@bol.com| "pais e obrigatorio"      |
            | Humberto	| Silva		| Brasil	|			| Ijuí		| 90000-200	| 993239301	| hsilva@bol.com| "endereco e obrigatorio"  |
            | Humberto  | Silva		| Brasil	| Rua 1		|			| 90000-200	| 993239301	| hsilva@bol.com| "cidade e obrigatorio"    |
            | Humberto	| Silva		| Brasil	| Rua 1		| Ijuí		|			| 993239301	| hsilva@bol.com| "cep e obrigatorio"       |
            | Humberto	| Silva		| Brasil	| Rua 1		| Ijuí		| 90000-200	|			| hsilva@bol.com| "telefone e obrigatorio"  |
            | Humberto	| Silva		| Brasil	| Rua 1		| Ijuí		| 90000-200	| 993239301	|  				| "e-mail e obrigatorio"    |