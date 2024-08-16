      #Language pt

      Funcionalidade: Tela de login
      Como cliente da EBAC-SHOP
      Quero fazer concluir meu cadastro
      Para finalizar minha compra

      Contexto:
      Dado que eu acesse a  pagina de checkout da EBAC-SHOP

      Cenário: Autenticação válida
      Quando eu digitar <nome> e <sobrenome> e <pais> e <cidade> e <endereco> e <cep>e <telefone> e <e-meil> eu clicar em "Registrar"
      Então eu devo ser redirecionado para a página inicial e o usuário deve receber um e-mail de confirmação
    
      Cenario: Autenticação inválida
      Quando eu digitar <nome> e <sobrenome> e <pais> e <cidade> e <endereco> e <>e <telefone> e <>
      Então o sistema deve exibir uma mensagem de <alerta> 


      Exemplo:

      | nome       | sobrenome  | pais     | cidade           | endereco                  | cep         | telefone        | e-mail                             | alerta |
      | "joao"     | "Silva"    | "Brasil" | "São Paulo"      | "Rua das Flores, 123"     | "12345-678" | "(11)987654321" | "João_Silva123@exemplo.com.br"     |"Por favor Preencha todos os campos" |
      | "Maria"    | "Oliveira" | "Brasil" | "Rio de Janeiro" | "Avenida Atlântica, 456"  | "22021-001" | "(21)912345678" | "maria_oliveira456@exemplo.com.br" |
      | "Carlos"   | "Santos"   | "Brasil" | "Belo Horizonte" | "Rua Afonso Pena, 789"    | "30130-120" | "(31)998765432" | "carlos_santos789@exemplo.com.br"  |
      | "Ana"      | "Costa"    | "Brasil" | "Salvador"       | "Praça da Sé, 101"        | "40020-210" | "(71)987654321" | "ana_costa101@exemplo.com.br"      |
      | "Pedro"    | "Lima"     | "Brasil" | "Curitiba"       | "Rua XV de Novembro, 202" | "80020-310" | "(41)987612345" | "pedro_lima202@exemplo.com.br"     |
      | "Fernanda" | "Souza"    | "Brasil" | "Fortaleza"      | "Avenida Beira Mar, 333"  | "60165-121" | "(85)987654123" | "fernanda_souza333@exemplo.com.br" |
      | "Lucas"    | "Almeida"  | "Brasil" | "Porto Alegre"   | "Rua dos Andradas, 404"   | "90020-002" | "(51)997654321" | "lucas_almeida404@exemplo.com.br"  |
      | "Patrícia" | "Gomes"    | "Brasil" | "Recife"         | "Avenida Boa Viagem, 505" | "51020-010" | "(81)998765432" | "patricia_gomes505@exemplo.com.br" |