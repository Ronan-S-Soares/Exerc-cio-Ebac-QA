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
            E eu devo ver a mensagem "Produto adicionado ao carrinho com sucesso"

            Cenario: Configuração inválida de produto
            Quando eu selecionar o <tamanho> e <> e <quantidade>
            Entao eu devo ver uma mensagem de erro indicando que a cor é obrigatória
            E o produto não deve ser adicionado ao carrinho

            Cenario: Limite de quantidade por venda
            Quando eu o <tamanho> e <cor> e <quantidade>
            E eu definir a quantidade "12"  # Quantidade excedendo o limite permitido
            Entao eu devo ver uma mensagem de erro indicando que o limite é de 10 produtos por venda

            Cenario: Limpar configurações do produto
            Quando eu o <tamanho> e <cor> e <quantidade> e eu clicar em "Limpar"
            Entao todas as configurações devem voltar ao estado original

            Exemplo:
            | tamanho | Cor    | Quantidade |
            | "G"     | "Azul" | "3"        |
            | M       | "      | "Azul"     | "5" |
            | GG      | "      | "Verde"    | "10" |
            | P       | "      | "Rosa"     | "3" |
            | G       | "      | "Amarelo"  | "8" |
            | XG      | "      | "Prata"    | "2" |
            | PP      | "      | "Preto"    | "7" |
            | EG      | "      | "Branco"   | "4" |


