# Bend quando precisa tomar decisões baseadas em condições. Uma forma comum de implementar isso é usando declarações condicionais, como if e else.

# A Estrutura Básica do if-else
# A estrutura if-else permite que nosso programa execute diferentes blocos de código dependendo se uma condição é verdadeira ou falsa.

def if_else(cond): 
  if cond:
    return "condition is true"
  else:
    return "condition is false"

# Aqui, cond é a condição que estamos avaliando. Se cond for verdadeira, a função retorna "condition is true". Caso contrário, retorna "condition is false".

# Importância do else
# Diferente de algumas linguagens, onde o else pode ser opcional, em Bend o else é obrigatório. Isso garante que sempre haverá um caminho de execução, mesmo que a condição inicial não seja satisfeita.

# A Condição
# Na estrutura acima, cond deve retornar um u24 (um inteiro de 24 bits), e onde 0 representa false e qualquer outro valor representa true.

def if_else_u24(cond):
  if cond != 0:
    return "condition is true"
  else:
    return "condition is false"

# Correntes de Condições com elif

# Para situações onde precisamos avaliar múltiplas condições, usamos elif. Isso nos permite criar correntes de condições onde várias condições são testadas em sequência até que uma delas seja verdadeira.


def else_if(cond):
  if cond:
    return 0
  elif cond > 1:
    return 1
  elif cond < 1:
    return 2
  else:
    return 3

# Aqui, temos uma função que retorna diferentes valores dependendo do valor de cond:
# Se cond for verdadeiro, retorna 0.
# Se cond for maior que 1, retorna 1.
# Se cond for menor que 1, retorna 2.
# Se nenhuma das condições acima for verdadeira, retorna 3.

def main():
  if_else = if_else(2 < 3)
  if_else_u24 = if_else_u24(5)
  else_if = else_if(0)
  return else_if


