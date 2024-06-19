# # Tipos em Bend
#
# Em Bend, tipos são fundamentais para definir a estrutura e a natureza dos dados que um programa pode manipular.
# Eles permitem a criação de estruturas de dados complexas e ajudam a garantir a integridade e a consistência dos dados ao longo da execução do programa.
#
# ## Definindo Tipos
#
# Para definir um tipo em Bend, utilizamos a palavra-chave type. Um tipo pode ter múltiplos construtores, cada um com seus próprios campos.
# Aqui está a sintaxe básica para a definição de um tipo:
#
# type TypeName:
#   Constructor1 {value, field1, field2, ...}
#   Constructor2 {field1, field2, ...}
#   ...
#
# ### Exemplo: Definindo um Tipo Vector
#
# Vamos criar um tipo `Vector` que representa uma lista de elementos. Cada elemento é um par de um número inteiro e um valor associado.
# Aqui está a definição do tipo `Vector`:

type Vector:
  Nil
  Cons {n, head, ~tail}

# Neste exemplo, o tipo `Vector` tem dois construtores: 
# - `Nil`, que representa uma lista vazia;
# - `Cons`, que representa um elemento da lista.
#
# O construtor `Cons` tem três campos:
# - `n`, que é um número inteiro;
# - `head`, que é o valor associado; e
# - `tail`, que é a cauda da lista.
#
# ## Criando Instâncias de Tipos
#
# Para criar uma instância de um tipo definido, utilizamos seus construtores. Aqui está um exemplo de como criar um vetor com três elementos:

def main():
  # Cria um vetor com três elementos: (2, "a"), (1, "b") e (0, "c")
  my_vector = Vector/Cons(2, "a", Vector/Cons(1, "b", Vector/Cons(0, "c", Vector/Nil)))
  return my_vector

# Neste exemplo, criamos um vetor com três elementos: (2, "a"), (1, "b") e (0, "c").
# O vetor é construído a partir do final, começando com o último elemento e adicionando os elementos anteriores.
# O resultado é uma lista encadeada de elementos, onde cada elemento aponta para o próximo.
# A criação de tipos em Bend é uma maneira poderosa de estruturar e manipular dados complexos.

# Como veremos a seguir, a definição de tipos em Bend é uma maneira poderosa de estruturar e manipular dados complexos, como Matrizes, Árvores, Grafos, etc.
