# Os `fold` statements fornecem uma maneira poderosa de reduzir uma estrutura de dados,
# aplicando uma função recursivamente e combinando os resultados. Outra linguagem que tem `fold` É Haskell que é uma
# técnica fundamental para operar em estruturas de dados, como listas e árvores. 
# O `fold` em bend é equivalente ao `foldl` em Haskell.


# Estrutura Básica do `fold`
# A estrutura `fold` reduz o valor dado com base nos casos de correspondência fornecidos.

# Campos Vinculados
# Assim como em `match`, podemos vincular nomes de variáveis aos valores correspondentes.

# Chamadas Implícitas de `fold`
# Para campos anotados com `~` na definição do tipo, a função `fold` é chamada implicitamente.

# Suponha uma definição de árvore onde os campos da subárvore são anotados com `~`:

type BTree:
  Leaf
  Node {value, ~left, ~right}

# Aqui, `Node` representa um nó interno da árvore com um valor e subárvores à esquerda e
# à direita, enquanto `Leaf` representa uma folha da árvore.

# #### Exemplo de `fold`

# Com esta definição, podemos usar a função `fold` de forma implícita:
# Vamos criar um `fold` que soma todos os valores dos nós da árvore:


def sum_btree(btree):
  fold btree:
    case BTree/Leaf:
      return 0
    case BTree/Node:
      return btree.value + btree.left + btree.right

# Neste exemplo:
# - Se o `tree` corresponder a uma `Leaf`, retornamos `0`.
# - Se o `tree` corresponder a um `Node`, somamos o valor do nó com os resultados das
# chamadas recursivas de `fold` nas subárvores `left` e `right`.

# #### Equivalência com Função Recursiva

# Um `fold` statement é equivalente a uma função recursiva inline. O exemplo acima pode
# ser reescrito de maneira equivalente usando uma função recursiva explícita:


def fold(tree):
  match tree:
    case BTree/Leaf:
      return 0
    case BTree/Node:
      return btree.value + fold(btree.left) + fold(btree.right)

# Exemplo de uso

def main():
  tree = BTree/Node(1, BTree/Node(2, BTree/Leaf, BTree/Leaf),
                       BTree/Node(3, BTree/Leaf, BTree/Leaf))
  return sum_btree(tree)  # Saída: 6

# Conclusão
# Os `fold` statements fornecem uma maneira elegante de reduzir estruturas de dados
# complexas, como árvores, aplicando uma função recursivamente. Ao permitir vinculação de
# campos e chamadas implícitas de `fold`, essa estrutura facilita a manipulação e
# agregação de dados de maneira clara e eficiente.
