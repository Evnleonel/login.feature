            #language: pt

            Funcionalidade: Tela de login na plataforma EBAC-SHOP
            Como cliente do EBAC-Shop
            Quero fazer o login na plataforma
            Para visualizar os meu pedidos

            Contexto:
            Dado que eu acesse a pagina de login do portal EBAC-Shop

            Cenário: Autenticação válida
            Quando eu digitar os dados de autenticação do usuário "evandro.leonel@ebac.com.br"
            E senha "123@Ebac"
            Então deve direcionar o usuário a tela de Checkout

            Cenário: Autenticação inválida
            Quando eu digitar os dados de autenticação do usuário "evandro.leonel@ebac.com.br"
            E senha "000@Ebac"
            Então deve exibir a mensagem "Usuário ou senha inválidos"

            Cenário: Autenticação inválida
            Quando eu digitar os dados de autenticação do usuário "evandroleonel@ebac.com.br"
            E senha "123@Ebac"
            Então deve exibir a mensagem "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários inválidos
            Quando eu digitar o <usuário>
            E a <senha>
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | Usuário                  | Senha     | mensagem                   |
            | evn.leoncio              | 123@Ebac  | Usuário ou senha inválidos |
            | evandro.leonel           | 0012@Ebac | Usuário ou senha inválidos |
            | evanilson@ebac           | zx17@Ebac | Usuário ou senha inválidos |
            | evn.limonada@ebac.com.br | 123@Win   | Usuário ou senha inválidos |