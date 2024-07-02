# Os `switch` statements oferecem uma forma estruturada e eficiente de selecionar entre 
# múltiplas condições baseadas em um valor específico. Em algumas linguagens de 
# programação, o uso de declarações `switch` pode simplificar a lógica de controle de 
# fluxo em comparação com múltiplos `if-else`.

# Estrutura Básica do `switch`
# A construção `switch` é usada para associar um nome de variável ao resultado de uma 
# condição dada e ramificar para o caso que corresponde ao seu valor.

# Ordenação de Casos 
# Os casos devem ser listados do menor para o maior, começando em `0` e incrementando por `1`.

# Caso Padrão (`_`) 
# O último caso deve ser `_`, que captura todos os valores não explicitamente enumerados.

# Valores Nativos 
# Os `switch` statements só podem ser usados com valores numéricos nativos.

# Vamos examinar um exemplo básico:
def switch_example(x):
  switch x:
    case 0:
      return 6
    case 1:
      return 7
    case _:
      return x - 2

# Neste exemplo, o `switch` verifica o valor de `x` e retorna um resultado baseado no caso 
# correspondente:
# - Se `x` for `0`, retorna `6`.
# - Se `x` for `1`, retorna `7`.
# - Para todos os outros valores (`_`), retorna `x - 2`.

# No último caso, o valor do predecessor está disponível com o nome `bound_var-next_num`, 
# onde `bound_var` é a variável definida pela condição e `next_num` é o valor esperado do 
# próximo caso. Vamos detalhar isso com um exemplo mais específico.

# Implementação do `switch` usando `if-else`

# Podemos ver que a estrutura `switch` pode ser convertida para uma série de `if-else`:
def switch_case(x):
  if x == 0:
    return 6
  elif x == 1:
    return 7
  else:
    return x - 2

# Exemplo Comparativo
# Vamos ver como um `switch` pode ser equivalente a um `if-else` da seção anterior:

def if_else_equiv(condition):
  if condition == 0:
    # then branch
    return 1
  else:
    # else branch
    return 0

# Equivalente ao `switch`:

def switch_equiv_expl(condition):
  switch condition == 0: # explicito
    case 0:
      # else branch
      return 0
    case _:
      # then branch
      return 1

def switch_equiv_impl(condition):
  switch condition: # implicito
    case 0:
      return 1
    case _:
      return 0

# Ambas as funções acima implementam a mesma lógica, mas usando diferentes estruturas de 
# controle.
# Vamos testar a função:
def main():
  condition = (2 / 1)
  return switch_equiv_impl(condition) 

### Conclusão
# O uso de `switch` pode tornar seu código mais clara e legível quando lidamos com muitas 
# condições e, é mais eficiente do que múltiplos `if-else`. É uma poderosa ferramenta de 
# controle de fluxo que complementa as tradicionais estruturas `if-else`. 
