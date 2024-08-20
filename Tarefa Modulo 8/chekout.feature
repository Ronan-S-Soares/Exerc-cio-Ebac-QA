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
      Quando eu digitar <nome> e <sobrenome> e <pais> e <cidade> e <endereco> e < e-mail >e <telefone>
      Então o sistema deve exibir uma mensagem de <alerta> 


      Exemplo:

      | nome       | sobrenome  | pais     | cidade           | endereco                  | cep         | telefone        | e-mail                             | alerta |
      | "joao"     | "Silva"    | "Brasil" | "São Paulo"      | "Rua das Flores, 123"     | "12345-678" | "(11)987654321" | "João_Silva123@exemplo.com.br"     |"Por favor Preencha todos os campos" |
      | "Maria"    | "Oliveira" | "Brasil" | "Rio de Janeiro" | "Avenida Atlântica, 456"  | "22021-001" | "(21)912345678" | "maria_oliveira456@exemplo.com.br" |
      | "Carlos"   | "Santos"   | "Brasil" | "Belo Horizonte" | ""    | "30130-120" | "(31)998765432" | "carlos_santos789@exemplo.com.br"  |
      
