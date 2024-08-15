            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma  
            Para visualizar meus pedidos

            Contexto:

            Cenario: Autenticação válida
            
            Dado que eu acesse a funcao login

            Cenario: 
            Quando eu digitar usuario "João_Silva123"
            E a senha "Gatinho_voador"
            Entao deve ser direcionado a pagina de checkout com mengem de boas vindas "Olá João Silva"

            Cenario: Autenticação inválida
            Quando  digitar usuario "João_Silva123"
            E a senha "Gatinho_Planador321"
            Entao deve aparecer uma mensagem de erro "Usuário ou senha incorretos"

            Exemplo:
            | usuario            | senha       | mensagem   |
            | "João_Silva123"    | "Gatinho_voador" | "Olá João" |
            | "Aline_7" | "teste@123" | "Olá José" |
            | "anaaaSilva8" | "teste@123" | "Olá Ana" |
            