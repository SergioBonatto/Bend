# A construção `bend` em Bend é uma ferramenta poderosa e versátil, usada para criar 
# estruturas de dados recursivas e emular processos iterativos de uma maneira declarativa 
# e funcional. Ela permite definir um processo recursivo que constrói uma estrutura 
# complexa passo a passo até que uma condição específica seja atendida. 

# Estrutura Básica

# A construção `bend` inicializa um processo recursivo com um estado inicial e itera até 
# que uma condição especificada seja atendida. É semelhante a uma função recursiva embutida.

# bend <variáveis_de_estado>:
#   when <condição>:
#     <operações_recursivas>
#   else:
#     <operações_de_terminação>

# Inicialização das Variáveis de Estado:
# As variáveis de estado são inicializadas no cabeçalho do `bend`. Pode haver múltiplas 
# variáveis de estado, cada uma com um valor inicial.

# Estado Imutável: 
# As variáveis de estado são tratadas de forma imutável, garantindo que cada passo 
# recursivo tenha um estado consistente e previsível.

# Recursão Estruturada:
# O `bend` inicia uma construção recursiva, inicializando um estado e executando um bloco 
# de código até que uma condição de parada seja atendida.

# Recursividade Controlada:
# A construção `bend` oferece um controle explícito sobre a recursividade, permitindo 
# definir claramente quando a recursão deve continuar e quando deve parar.

# Condição de Continuação:
# A cláusula `when` define a condição sob a qual a recursão continua. Se a condição for 
# verdadeira, as operações recursivas são executadas. Se a condição for falsa, as operações 
# de terminação são executadas.

# Operações Recursivas:
# Dentro da cláusula `when`, a função `fork` é usada para chamar recursivamente o `bend` 
# com novos valores para as variáveis de estado. O número de argumentos passados para `fork` 
# deve corresponder ao número de variáveis de estado.

# Operações de Terminação:
# Quando a condição não é mais verdadeira, as operações de terminação são executadas na 
# cláusula `else`. Esta cláusula define o comportamento final e os valores retornados pela 
# construção `bend`.

# Construção Incremental:
# Permite construir estruturas de dados recursivas adicionando camadas ou ramificações em 
# cada chamada recursiva.

# Flexibilidade: 
# A capacidade de manipular múltiplas variáveis de estado e construir diferentes tipos de 
# estruturas de dados torna o `bend` uma ferramenta flexível e poderosa para diversas 
# aplicações.

# Versatilidade: 
# Além de criar estruturas de dados recursivas, o `bend` pode ser usado para simular 
# processos iterativos.

# Exemplos de Uso
# Exemplo 1: Criação de uma Árvore Binária

def create_tree():
  bend x = 0:
    when x < 3:
      left = fork(x + 1)
      right = fork(x + 1)
      tree = ![left, right]
    else:
      tree = !x
  return tree

# Este código cria uma árvore binária 
# - Inicializa `x = 0`.
# - Continua a recursão enquanto `x < 3`.
# - Dentro da cláusula `when`, `fork(x + 1)` chama recursivamente a função `bend` com um 
# valor incrementado de `x`.
# - Cria nós da árvore com `![left, right]`.
# - Termina a recursão com `!x` quando `x >= 3`.

# Exemplo 2: Cálculo de Soma com Loop Emulado
# bend é tão geral que podemos até usá-lo para emular um loop recursivamente iterando 
# sobre um estado até que uma condição de término seja atendida. Por exemplo, este programa
# Python:

# sum = 0
# idx = 0
# while idx < 10:
#   sum = idx + sum
#   idx = idx + 1

def loop():
  bend idx = 0:
    when idx < 10:
      sum = idx + fork(idx + 1)
    else:
      sum = 0
  return sum

# Este código emula um laço que soma inteiros de `0` a `9` utilizando recursão.
# - Inicializa `idx = 0`.
# - Continua a recursão enquanto `idx < 10`.
# - Itera sobre `idx`, incrementando-o em `1`.
# - Calcula a soma dos inteiros de `0` a `9`, adicionando o valor atual de `idx` à soma 
# da próxima iteração.
# - Termina a recursão retornando `0` quando `idx >= 10`.

# Múltiplas Variáveis de Estado
# O `bend` pode manipular múltiplas variáveis de estado simultaneamente, permitindo 
# processos recursivos complexos.

def mult_var():
  bend x = 1, y = 2:
    when x < 10 & y < 20:
      result = fork(x + 1, y + 2)
    else:
      result = (x, y)
  return result

# Este código cria uma tupla  
# - Inicializa `x = 1` e `y = 2`.
# - Continua a recursão enquanto `x < 10` e `y < 20`.
# - Incrementa `x` e `y` de maneira diferente em cada passo recursivo.
# - Termina a recursão retornando os valores de `(x, y)` quando uma das condições não é 
# mais verdadeira.

# Estruturas de Dados Recursivas
# A construção `bend` pode ser usada para construir estruturas de dados recursivas 
# complexas, como árvores, listas ligadas, e grafos.

def repeat(target):
  bend n = 0:
    when n < target:
      list = List/Cons(n, fork(n + 1))
    else:
      list = []
  return list

# Este código cria uma listas ligadas 
# - Inicializa `n = 0`.
# - Continua a recursão enquanto `n < target`.
# - Cria nós da lista com `[n, (n + 1), ..., (n < target)]`.
# - Termina a recursão com `[]` quando `n >= target`.

# Exemplos Práticos e Exercícios
# Para ajudar a solidificar a compreensão da construção `bend`, aqui estão alguns exemplos
# práticos e exercícios:

# Exemplo 1: Fatorial
# Calcule o fatorial de um número usando `bend`.
# def factorial():
#   return 

# Exemplo 2: Sequência de Fibonacci
# Gere a sequência de Fibonacci até o 10º termo.
# def fibonacci():
#   return 

# Conclusão
# A construção `bend` em Bend é uma ferramenta poderosa e flexível para definir processos 
# recursivos, gerar estruturas de dados complexas, manipulação de estado e emular 
# comportamentos iterativos de forma clara e expressiva. Ela combina elementos de 
# programação funcional e manipulação recursiva de dados para construir estruturas 
# complexas de maneira incremental e expressiva. Compreender suas regras e comportamento é 
# essencial para utilizar todo o potencial desta construção e aplicar esses conceitos em 
# problemas de programação do mundo real.



