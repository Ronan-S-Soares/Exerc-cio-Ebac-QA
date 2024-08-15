#Language pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
            Dado que eu acesse a  pagina de checkout da EBAC-SHOP

            Cenário: Autenticação válida
    Quando eu digitar o nome "João"
    E digitar o sobrenome "Silva"
    E escolher o país "Brasil"
    E escolher a cidade "São Paulo"
    E digitar o endereço "Rua das Flores, 123"
    E digitar o CEP "12345-678"
    E digitar o telefone "(11) 98765-4321"
    E digitar o e-mail "joao.silva@exampl.com"
    E eu clicar em "Registrar"
    Então eu devo ser redirecionado para a página inicial
    E uma mensagem de confirmação "Cadastro realizado com sucesso" deve ser exibida
    E o sistema deve armazenar as informações do usuário no banco de dados
    E o usuário deve receber um e-mail de confirmação
           Então deve exibir uma mensagem de finalizar compras "Obrigado por se cadastrar iremos te trasnferir para pagina de finalizar compras "

Cenario: Autenticação válida
    Quando eu preencher o formulário com:
      | nome      | "João"               |
      | sobrenome | "Silva"              |
      | país      | "Brasil"             |
      | cidade    | "São Paulo"          |
      | endereço  | "Rua das Flores, 123"|
      | CEP       | "12345-678"          |
      | telefone  | "(11) 98765-4321"    |
      | e-mail    | "joao.silva@example.com" |
    E eu clicar em "Registrar"
    Entao eu devo ver a mensagem "Cadastro realizado com sucesso"
    E o sistema deve armazenar as informações do usuário
    E eu devo receber um e-mail de confirmação

Cenario: Autenticação inválida
    Quando eu digitar o nome "João"
    E eu digitar o sobrenome "Silva"
    E eu escolher o país "Brasil"
    E eu escolher a cidade "São Paulo"
    E eu digitar o endereço "Rua das Flores, 123"
    E eu digitar o CEP "12345-678"
    E eu digitar o telefone "98765-4321"    # Telefone inválido (falta o código de área)
    E eu digitar o e-mail "joao.silva@exemplo"    # E-mail inválido (domínio incorreto)
    E eu clicar em "Registrar"
    Entao eu devo ver uma mensagem de erro indicando os campos inválidos
    E o sistema não deve armazenar as informações do usuário
    E eu não devo ser redirecionado para a página inicial
    E eu não devo receber um e-mail de confirmação

  Cenario: Autenticação inválida
    Quando eu preencher o formulário com:
      | nome      | "João"                   |
      | sobrenome | "Silva"                  |
      | país      | "Brasil"                 |
      | cidade    | "São Paulo"              |
      | endereço  | "Rua das Flores, 123"    |
      | CEP       | "12345-678"              |
      | telefone  | "98765-4321"             |  # Telefone inválido|
      | e-mail    | "joao.silva@exemplo"     |  # E-mail inválido |
    E eu clicar em "Registrar"
    Entao eu devo ver uma mensagem de erro indicando os campos inválidos
    E o sistema não deve armazenar as informações do usuário
    E eu não devo ser redirecionado para a página inicial
    E eu não devo receber um e-mail de confirmação