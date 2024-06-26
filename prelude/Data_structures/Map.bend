# Mapas em Bend
# Em Bend, um Mapa representa uma árvore com valores armazenados nos ramos. 
# É destinado a ser usado como uma estrutura de dados de mapa eficiente com chaves inteiras 
# e operações de leitura e escrita O(log n).

# Definindo Mapas
# Para definir um Mapa em Bend, utilizamos a palavra-chave type. 
# Um Mapa pode ter dois construtores: Node e Leaf.

# Exemplo: Definindo um Mapa
# type Map:
#   Node { value, ~left, ~right }
#   Leaf

# - Node { value ~left ~right }: 
#     Representa um nó do mapa com um valor e subárvores esquerda e direita. 
#     Nós vazios têm * armazenado no campo de valor.
# - Leaf: 
#     Representa uma porção não escrita e vazia do mapa.

# Sintaxe
# Aqui está como você cria um novo Mapa com alguns valores iniciais:

# { 0: 4, `hi`: "bye", 'c': 2 + 3 }
# As chaves devem ser números U24, e podem ser dadas como literais ou qualquer 
# outra expressão que avalie para um U24.

# Os valores podem ser qualquer coisa, mas armazenar dados de tipos diferentes 
# em um Mapa tornará mais difícil a sua compreensão.

# Você pode ler e escrever um valor de um mapa com o operador []:

# map = { 0: "zero", 1: "one", 2: "two", 3: "three" }
# map[0] = "not zero"
# map[1] = 2
# map[2] = 3
# map[3] = map[1] + map[map[1]]
# Aqui, map deve ser o nome da variável Mapa, e as chaves dentro de [] 
# podem ser qualquer expressão que avalie para um U24.

# Mapa é uma árvore binária eficiente com chaves u24. 
# Oferece operações de leitura e escrita O(log n).

# { 0: 4, 'c': 2 + 3 , ... } # Mapa

# Correspondência de Padrões
# Podemos fazer correspondência de padrões com Mapas:

# map = { 0: "zero", 1: "one", 2: "two", 3: "three" }

# ## Atualizando Valores Usando Chaves
# Podemos atualizar valores usando chaves:

# map[0] = "not zero"      # Atualiza o valor na chave 0
# map[1] = 2               # Atualiza o valor na chave 1
# map[2] = 3               # Atualiza o valor na chave 2

# ## Usando Chaves em Operações
# Podemos usar chaves em operações:

# map[3] = map[1] + map[map[1]]  # Usa o valor na chave 1 e o valor na chave map[1]

# As chaves podem ser literais ou expressões que avaliam para u24.
# Os valores podem ser de qualquer tipo, mas a mistura de tipos pode tornar o raciocínio sobre o mapa mais difícil.

def main():
  map = { 0: "zero", 1: "one", 2: "two", 3: "three" }
  return map[2] # deve retornar "two"



