#Language pt

Funcionalidade: Compras
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho


Dado : Configuração de Produto no EBAC-SHOP

  Cenario: Configuração válida de produto
    Quando eu selecionar o tamanho "M"
    E eu escolher a cor "Azul"
    E eu definir a quantidade "3"
    E eu clicar em "Adicionar ao carrinho"
    Entao o produto deve ser adicionado ao carrinho com as configurações selecionadas
    E eu devo ver a mensagem "Produto adicionado ao carrinho com sucesso"

  Cenario: Configuração inválida de produto
    Quando eu selecionar o tamanho "M"
    E eu não selecionar uma cor  # Cor não selecionada
    E eu definir a quantidade "3"
    E eu clicar em "Adicionar ao carrinho"
    Entao eu devo ver uma mensagem de erro indicando que a cor é obrigatória
    E o produto não deve ser adicionado ao carrinho

  Cenario: Limite de quantidade por venda
    Entao eu selecionar o tamanho "M"
    E eu escolher a cor "Vermelho"
    E eu definir a quantidade "12"  # Quantidade excedendo o limite permitido
    E eu clicar em "Adicionar ao carrinho"
    Entao eu devo ver uma mensagem de erro indicando que o limite é de 10 produtos por venda
    E o produto não deve ser adicionado ao carrinho

  Cenario: Limpar configurações do produto
    Quando eu selecionar o tamanho "M"
    E eu escolher a cor "Verde"
    E eu definir a quantidade "2"
    e eu clicar em "Limpar"
    Entao todas as configurações devem voltar ao estado original
    E os campos de tamanho, cor e quantidade devem estar vazios

    Exemplo:
    | tamanho | "M"   |
      | cor     | "Azul"|
      | quantidade | "3"|
      | tamanho | "M"   |
      | cor     | ""    |  # Cor não selecionada|
      | quantidade | "3"|

 