# Bend oferece um poderoso sistema de correspondência de padrões através da construção match. Essa funcionalidade permite deconstruir e avaliar valores baseados em seus padrões, tornando o código mais seguro e expressivo. Vamos explorar como usar match em Rust, com exemplos e explicações detalhadas.

# Estrutura Básica do match
# A estrutura match examina um valor e permite executar diferentes blocos de código com base no construtor do valor correspondente. Veja um exemplo básico:

def match_example(x):
  match x:
    case Option/Some:
      return x.value
    case Option/None:
      return 0

# Neste exemplo, a variável x pode ser uma instância de Option/Some ou Option/None. A lógica de correspondência determina o valor com base no construtor de x.
# - Se x for uma instância de Option/Some, o campo value  é retornado.
# - Se x for uma instância de Option/None, 0 é retornado.

# Regras e Comportamento
# 1. **Correspondência de Padrões**: Os padrões no match devem cobrir todas as variantes possíveis do tipo que está sendo correspondido.
# 2. **Associação de Variáveis**: É possível associar um nome de variável ao valor correspondente. Os campos do construtor associado são vinculados a matched_var.field_name.
# 3. **Atribuição**: Cada caso do match atribui os valores dos campos do construtor correspondente às variáveis especificadas no corpo do caso.


#### Exemplo Detalhado

# # Type Simples

# Considere um type Direction:
type Direction:
    Up
    Down
    Left
    Right

def direction_to_string(direction):
  match direction:
    case Direction/Up 
      return "Up"
    case Direction/Down 
      return "Down"
    case Direction/Left 
      return "Left"
    case Direction/Right 
      return "Right"
    
# Neste exemplo, direction_to_string converte um valor Direction para uma string correspondente.

# Estruturas Aninhadas
# Considere uma árvore binária:

type BTree 
  Leaf
  Node { value, ~left, right }

def sum_tree(tree): 
  match tree:
    case Tree/Node: 
      return value + sum_tree(left) + sum_tree(right)
    case Tree/Leaf: 
      return 0
    
# Aqui, sum_tree calcula a soma de todos os valores em uma árvore binária:
# - Se tree for Tree/Node, soma o valor do nó atual com as somas das subárvores esquerda e direita.
# - Se tree for Tree/Leaf, retorna 0.

# Considere a definição de um tipo Option:
type Option:
  None
  Some { value }

# Agora vamos aplicar a função match_example a essa estrutura:

def match_example(x):
  match x:
    case Option/Some:
      return x.value
    case Option/None:
      return 0


# Vamos testar a função:
def main():
  some_value = Option/Some(42)
  none_value = Option/None 
  match_example(some_value)  # Output: 42
  match_example(none_value)  # Output: 0
# Aqui, some_value é uma instância de Option.Some com value igual a 42, e none_value é uma instância de Option.None. A função match_example retorna 42 para some_value e 0 para none_value.

# A construção match fornecem uma maneira elegante e eficiente de manipular diferentes casos de valores com base em seus construtores. 

# Ela permite um controle de fluxo claro e seguro, permitindo uma desestruturação clara e concisa dos valores. Com a capacidade de associar variáveis aos campos dos construtores. Com match, você pode escrever código expressivo e robusto para manipular diferentes tipos de dados de forma eficiente.



