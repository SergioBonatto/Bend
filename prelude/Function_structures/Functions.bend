# Funções em Bend

# Bend é uma linguagem que suporta a definição de funções de uma maneira concisa e expressiva.
# As funções são blocos de código reutilizáveis que realizam operações específicas e retornam valores.

## Definição de Funções

# As funções são definidas usando a palavra-chave `def` seguida pelo nome da função, parâmetros entre parênteses e um corpo.

def sum(a, b):
  result = a + b
  return result

# A função `soma` recebe dois parâmetros `a` e `b`, e retorna a soma dos dois.

## Funções Anônimas (Lambdas)

# Bend suporta funções anônimas, também conhecidas como lambdas, que são definidas usando a sintaxe `lambda x: expressão`.

# Exemplo de uma função anônima que soma um número:
def lambda_inc:
  inc = lambda x: x + 1
  return inc

# Esta função pode ser chamada da mesma maneira que uma função nomeada:
# resultado = lambda_soma(5)  # resultado é 6

## Funções de Alta Ordem

# Funções de alta ordem são aquelas que aceitam outras funções como parâmetros ou retornam funções.

# Exemplo de função que aceita outra função como parâmetro:
def apply_two_times(f, x):
  return f(f(x))

# Usando a função `aplicar_duas_vezes` com uma função anônima:
# resultado = aplicar_duas_vezes(lambda x: x + 1, 5)  # resultado é 7

## Recursão

# Bend é uma linguagem que suporta recursão, permitindo que uma função chame a si mesma.

# Exemplo de função recursiva para calcular o fatorial de um número:
def factorial(n):
  if n == 0:
    return 1
  else:
    return n * factorial(n - 1)

# Funções recursivas em Bend são otimizadas para recursão de cauda, resultando em melhor desempenho e uso eficiente de memória.

## Padrões de Correspondência

# As funções podem utilizar padrões de correspondência para decomporem valores e tomarem decisões com base nesses valores.

# Exemplo de função que utiliza padrões de correspondência para calcular o fatorial:
def factorial_match(n):
  switch n:
    case 0:
      return 1
    case _:
      return n * factorial_match(n - 1)

## Currying

# Em Bend, as funções podem ser parcialmente aplicadas através do currying, permitindo que uma função com múltiplos parâmetros seja transformada em uma cadeia de funções que aceitam um único parâmetro.

# Exemplo de função curried:
def curried_sum(a):
  return lambda b: a + b

# Usando a função curried:
# soma5 = soma2(5)
# resultado = soma5(3)  # resultado é 8

## Conclusão

# Funções em Bend são poderosas e flexíveis, permitindo a criação de código modular e reutilizável.
# Com suporte para funções anônimas, recursão, currying e padrões de correspondência, Bend facilita a escrita de funções concisas e expressivas.

def main():
  sum = sum(2, 3)
  lambda_inc5 = lambda_inc(5)
  higher_order = apply_two_times(lambda_inc, 5)
  recursive = factorial(5)
  factorial_match = factorial_match(5)
  sum5 = curried_sum(5)
  sum5_3 = sum5(3)
  return sum5_3
