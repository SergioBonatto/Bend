# Grafos em Bend
# Em Bend, uma forma eficiente de criar um grafo é usando um mapa de listas de pares. 
# Cada chave do mapa representa um nó, e a lista de pares associada a essa chave representa 
# as arestas conectando esse nó a outros nós, juntamente com as distâncias associadas.

# Exemplo: Construindo um Grafo em Bend
# Aqui está um exemplo de como podemos construir um grafo em Bend usando um mapa de listas de pares:

def main():
  graph = {
    'a': [(4, 'b'), (1, 'c')],
    'b': [(4, 'a'), (13, 'c'), (2, 'd')],
    'c': [(1, 'a'), (13, 'b'), (5, 'd')],
    'd': [(2, 'b'), (5, 'c')]
  }
  return graph

# Neste exemplo, temos um grafo com quatro nós ("a", "b", "c", "d") e várias 
# arestas com distâncias associadas.
# - O nó 'a' está a uma distância 4 do nó 'b' e a uma distância 1 do nó 'c'.
# - O nó 'b' está a uma distância 4 do nó 'a', 13 do nó 'c' e a uma distância 2 do nó 'd'.
# - O nó 'c' está a uma distância 1 do nó 'a', 13 do nó 'b' e a uma distância 5 do nó 'd'.
# - O nó 'd' está a uma distância 2 do nó 'b' e a uma distância 5 do nó 'c'.

# Visualmente, o grafo pode ser representado da seguinte forma:
#
#  a - 4 - b
#  |     / |
#  1   13  2
#  | /     |
#  c - 5 - d
#

