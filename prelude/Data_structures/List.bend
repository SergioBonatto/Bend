# # Lista
#
# ```
# type List:
#   Cons {head, ~tail}
#   Nil
# ```
#
# O tipo List é um tipo nativo em Bend, utilizado para representar sequências ordenadas de elementos. Ele é definido por dois construtores principais: Cons e Nil.
#
# ## Construtores:
# - Cons: Este construtor é utilizado para criar uma lista com um elemento e uma cauda. Ele recebe dois argumentos:
# - head: O valor do primeiro elemento da lista.
# - tail: A cauda da lista, que é um outro objeto do tipo List.
# - Nil: Este construtor representa uma lista vazia. Ele não recebe argumentos e é usado para indicar o fim da lista.
#
# ## Representação Visual:
# Uma lista pode ser visualizada como uma cadeia de nós, onde cada nó contém um valor e uma referência ao próximo nó. O último nó, que não aponta para nenhum outro nó, é representado por Nil.
#
# ### Exemplo:
# ```
# Cons(1, Cons(2, Cons(3, Nil))) -> 1 -> 2 -> 3 -> Nil
#
# ```
#
# Neste exemplo, temos uma lista contendo os valores 1, 2 e 3, terminando com Nil.
#
# ## Notação Alternativa:
# Para simplificar a leitura e a escrita de listas, podemos utilizar uma notação mais familiar, onde os elementos são listados entre colchetes e separados por vírgulas.
#
# ### Exemplos:
# - [1, 2, 3] é equivalente a Cons(1, Cons(2, Cons(3, Nil))).
# - [] é equivalente a Nil, representando uma lista vazia.
# - [1] é equivalente a Cons(1, Nil), representando uma lista com um único elemento.
#
# ## Exemplo de Uso em Código:
# A seguir, um exemplo de uma função main que retorna a lista ["Hello", "world!"]:
#
#
# ```
def main():
  return List/Cons("Hello", List/Cons("world!", List/Nil))
# ```
# Neste exemplo, a função main constrói uma lista com dois elementos, "Hello" e "world!", utilizando os construtores Cons e Nil.


