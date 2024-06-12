# ## Árvores em Bend
# Bend possui suporte nativo para árvores, uma estrutura de dados hierárquica com nós conectados por arestas.

# ### Definição de Árvores
# Em Bend, uma árvore (`Tree`) é definida com dois construtores:
# - `Node { ~left, ~right }`: Representa um nó da árvore com subárvores à esquerda e à direita.
# - `Leaf { value }`: Representa uma folha da árvore que armazena um valor.

# As árvores são ideais para algoritmos que se beneficiam de recursão paralela, pois permitem dividir problemas grandes em subproblemas menores.

# ### Sintaxe para Árvores
# Bend fornece o operador `![]` para criar ramos de árvore e o operador `!` para criar uma folha de árvore.
# - `![a, b]` é equivalente a `Tree/Node { left: a, right: b }`
# - `!x` é equivalente a `Tree/Leaf { value: x }`

# Exemplo: Construindo uma Árvore em Bend
def main():
  tree = ![![!1, !2], ![!3, !4]]
  return tree
# Neste exemplo, criamos uma árvore binária com folhas contendo os valores 1, 2, 3 e 4.
# representando a seguinte árvore:

#      nó
#    /   \
#   nó    nó
#  / \   / \
# 1   2 3   4
#
