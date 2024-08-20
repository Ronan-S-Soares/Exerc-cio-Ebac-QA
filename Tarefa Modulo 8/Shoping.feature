            #Language pt

            Funcionalidade: Compras
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho


            Dado : Configuração de Produto no EBAC-SHOP

            Cenario: Configuração válida de produto
            Quando eu selecionar o <tamanho> e <cor> e <quantidade>
            Entao o produto deve ser adicionado ao carrinho com as configurações selecionadas
            E eu devo ver a <mensagem>

            Cenario: Configuração inválida de produto
            Quando eu selecionar o <tamanho> e <cor> e <quantidade>
            Entao eu devo ver uma <mensagem>
            E o produto não deve ser adicionado ao carrinho

            Cenario: Limite de quantidade por venda
            Quando eu o <tamanho> e <cor> e <quantidade>
            Entao eu devo ver uma <mensagem> de erro indicando que o limite é de 10 produtos por venda

            Cenario: Limpar configurações do produto
            Quando eu o <tamanho> e <cor> e <quantidade> e eu clicar em "Limpar"
            Entao todas as configurações devem voltar ao estado original

            Exemplo:
            | tamanho | Cor       | Quantidade | Mensagem|
            | "G"     | "Azul"    | "3"        |"Produto adicionado ao carrinho com sucesso"|
            | "M"     | ""    | "5"        | "obrigatorio escolher uma cor "|
            | "GG"    | "Verde"   | "12"       |" limite é de 10 produtos por venda"|
           


