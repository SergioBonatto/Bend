# Tipos em Bend
#
# Em Bend, tipos são fundamentais para definir a estrutura e a natureza dos dados que 
# um programa pode manipular. Eles permitem a criação de estruturas de dados complexas 
# e ajudam a garantir a integridade e a consistência dos dados ao longo da execução do programa.
#
# Definindo Tipos
#
# Para definir um tipo em Bend, utilizamos a palavra-chave type. Um tipo pode ter múltiplos 
# construtores, cada um com seus próprios campos. Aqui está a sintaxe básica para a definição de um tipo:
#
# type TypeName:
#   Constructor1 {value, field1, field2, ...}
#   Constructor2 {field1, field2, ...}
#   ...
#
# Exemplo: Definindo um Tipo Vector
#
# Vamos criar um tipo `Vector` que representa uma lista de elementos. 
# Cada elemento é um par de um número inteiro e um valor associado. Aqui está a definição do tipo `Vector`:

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
# Exemplo Adicional: Dias da Semana
#
# A seguir, apresentamos um exemplo de definição de um tipo para representar os dias 
# da semana e uma função que determina o próximo dia útil:
#
# Definição do Tipo `Day`

type Day:
  monday
  tuesday
  wednesday
  thursday
  friday
  saturday
  sunday

# Aqui definimos o tipo `Day` com sete construtores, um para cada dia da semana.
#
# Função `NextWeekday`
#
# A função `NextWeekday` recebe um valor do tipo `Day` e retorna o próximo dia útil. 
# Utilizamos correspondência de padrões (pattern matching) para definir o comportamento 
# da função para cada dia da semana.

def NextWeekday(day):
  match day:
    case Day/monday:
      return Day/tuesday
    case Day/tuesday:
      return Day/wednesday
    case Day/wednesday:
      return Day/thursday
    case Day/thursday:
      return Day/friday
    case _:
      return Day/monday
    
# Neste exemplo, definimos a função `NextWeekday` que mapeia cada dia da semana para o próximo dia útil.
# Note que `sexta-feira`, `sábado` e `domingo` devem retornar `segunda-feira`,
# pois consideramos apenas dias úteis, por isso o padrão `_` no final.
#
# Criando Instâncias de Tipos
#
# Para criar uma instância de um tipo definido, utilizamos seus construtores. 
# Aqui está um exemplo de como criar um vetor com três elementos:

def ex1():
  # Cria um vetor com três elementos: (2, "a"), (1, "b") e (0, "c")
  my_vector = Vector/Cons(2, "a", Vector/Cons(1, "b", Vector/Cons(0, "c", Vector/Nil)))
  return my_vector

# Neste exemplo, criamos um vetor com três elementos: (2, "a"), (1, "b") e (0, "c").
# O vetor é construído a partir do final, começando com o último elemento e adicionando os elementos anteriores.
# O resultado é uma lista encadeada de elementos, onde cada elemento aponta para o próximo.
# A criação de tipos em Bend é uma maneira poderosa de estruturar e manipular dados complexos.

# Testando a Função
#
# Para verificar o funcionamento da função `NextWeekday`, criamos uma função `Main` que 
# testa a função com alguns exemplos:

def main():
  my_vector = ex1()
  # Dois dias úteis após o sábado
  nextWeekday = NextWeekday (NextWeekday (Day/saturday))
  return nextWeekday

# Ao executar o código acima, o resultado esperado é `Day/tuesday`.
