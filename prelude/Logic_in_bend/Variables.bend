# Variáveis em Bend
# Bend permite o uso de variáveis para armazenar valores. As variáveis são declaradas com 
# uma igualdade e podem ser usadas em qualquer lugar onde um valor literal seria usado.

# Tipagem Dinâmica
# As variáveis em Bend são tipadas dinamicamente, o que significa que o tipo de uma variável 
# é determinado pelo valor que ela contém. As variáveis podem conter qualquer tipo de valor, 
# incluindo inteiros, floats, strings, listas, tuplas, mapas e funções.

# Sensibilidade a Maiúsculas e Minúsculas
# As variáveis em Bend são case-sensitive, o que significa que variáveis com nomes diferentes 
# são consideradas distintas, mesmo que apenas a capitalização seja diferente. 
# Por exemplo, `variavel` e `Variavel` são variáveis diferentes.

# Reatribuição de Variáveis
# As variáveis podem ser reatribuídas a qualquer momento. Isso permite que uma variável 
# mude o valor que armazena durante a execução do programa.

# Uso em Expressões Matemáticas
# As variáveis podem ser usadas em expressões matemáticas e para armazenar 
# valores de retorno de funções.

# Exemplo de Variáveis em Bend
# Abaixo está um exemplo que demonstra a declaração e uso de variáveis em Bend:

def main():
  # Declarando variáveis de diferentes tipos
  string = "Hello, World!"              # String
  integer = 42                          # Inteiro
  floating_point = 3.14                 # Float
  lista = [1, 2, 3, 4, 5]               # Lista
  tupla = (1, 2, 3, 4, 5)               # Tupla
  mapa = {'k': "value", 'j': "value2"}  # Mapa

  # Declarando uma função lambda e armazenando-a em uma variável
  funcao = lambda x: x + 1
  
  # Usando a variável de função para calcular o retorno
  resultado = funcao(integer)

  return resultado

# No exemplo acima:
# - `string` armazena uma string "Hello, World!".
# - `integer` armazena um número inteiro 42.
# - `floating_point` armazena um número float 3.14.
# - `lista` armazena uma lista de inteiros [1, 2, 3, 4, 5].
# - `tupla` armazena uma tupla de inteiros (1, 2, 3, 4, 5).
# - `mapa` armazena um mapa com chaves 'k' e 'j', e valores "value" e "value2".
# - `funcao` armazena uma função lambda que adiciona 1 ao seu argumento.
# - `resultado` armazena o valor retornado pela função `funcao` quando aplicada ao `integer`.

# Resumo
# - As variáveis são declaradas usando a igualdade `=`.
# - São tipadas dinamicamente.
# - São case-sensitive.
# - Podem ser reatribuídas.
# - Podem ser usadas em expressões matemáticas e para armazenar valores de retorno de funções.

# Com estas funcionalidades, as variáveis em Bend oferecem uma maneira flexível e 
# poderosa de gerenciar dados e lógica em seus programas.
