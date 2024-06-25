# Cálculo Lambda em Bend
#
# Introdução
# Bend permite o uso de lambdas, adotando notações como as de Scott e Church,
# com uma sintaxe similar à notação equacional que vimos anteriormente.
#
# Definição de Tipos de Dados
#
# Booleans
# Para definir tipos de dados usando lambdas, utilizamos a notação de atribuição.
# Por exemplo, para definir os valores booleanos `false` e `true`, usamos:

false = λf λt f
true  = λf λt t

# - `false` é uma função que recebe dois argumentos e retorna o primeiro.
# - `true` é uma função que recebe dois argumentos e retorna o segundo.
#
# Exemplos de Uso de Booleans
#
# Definição da Função `not`
# Para definir a função `not` usando booleans definidos por lambdas:

not = λb (b true false)

# - `not` é uma função que recebe um booleano `b` e retorna `true` se `b` for `false` 
# e `false` se `b` for `true`.
#
# Definição de Números Naturais
#
# Números Naturais Codificados por Scott (Scott-Encoded)
# Para definir números naturais usando a codificação de Scott:

Zs =    λz λs z
Ss = λp λz λs (s p)

# A codificação de Scott representa números naturais usando uma abordagem baseada em casos. 
# Cada número é uma função que recebe dois argumentos:
# - O primeiro argumento é retornado se o número for zero.
# - O segundo argumento é aplicado recursivamente se o número for um sucessor.
# 
# - `Zs` representa o número zero.
# - `Ss` é uma função que recebe um número natural codificado por Scott e retorna seu sucessor.
#
# A codificação de Scott permite a deconstrução direta dos números naturais,
# facilitando a definição de funções recursivas que operam sobre esses números.
#
# Números Naturais Codificados por Church (Church-Encoded)
# Para definir números naturais usando a codificação de Church:

Zc =    λz λs z
Sc = λp λz λs (s (p z s))

# A codificação de Church representa números naturais como funções que iteram um número de vezes
# sobre um processo. Cada número é uma função que recebe dois argumentos:
# - O primeiro argumento é o valor inicial (usualmente zero).
# - O segundo argumento é a função que será aplicada repetidamente.
#
# - `Zc` representa o número zero.
# - `Sc` é uma função que recebe um número natural codificado por Church e retorna seu sucessor.
#
# A codificação de Church facilita a definição de funções aritméticas,
# como adição e multiplicação, através da composição funcional.
#
# Em resumo, enquanto a codificação de Scott é baseada em uma abordagem de casos e deconstrução,
# a codificação de Church é baseada na aplicação repetitiva de funções, 
# o que facilita a definição de operações aritméticas.

# Exemplos de Uso de Números Naturais
#
# Adição de Números Naturais
# Para definir a adição de números naturais codificados por Church:
add = λm λn λz λs (m (n z s) s)

# A função de soma add para números naturais codificados por Church combina as iterações 
# de ambos os números, m e n, aplicando a função de sucessor repetidamente. 
# Aqui está como ela funciona:
#
# - add é uma função que recebe dois números naturais codificados por Church, m e n, e retorna sua soma.
# - m e n são números naturais codificados por Church.
# - λz é o valor inicial (normalmente zero).
# - λs é a função de sucessor que será aplicada repetidamente.
# - (n z s) aplica n vezes a função s ao valor inicial z.
# - m aplica a função s m vezes ao resultado de (n z s), combinando as iterações de ambos os números naturais.
#
# Isso resulta na aplicação da função de sucessor m + n vezes, 
# efetivamente somando os dois números naturais.


# Exemplo de função Fibonacci

fib = λx switch x {
  0: 0
  1: 1
  _: (+ (fib (- x 1)) (fib (- x 2)))
}

# - `fib` é uma função que calcula o n-ésimo número de Fibonacci.
# - `x` é o argumento que determina qual número de Fibonacci será calculado.
# - `switch x { ... }` é uma estrutura de seleção que permite diferentes casos baseados no valor de `x`.
# - `0: 0` define que o 0º número de Fibonacci é 0.
# - `1: 1` define que o 1º número de Fibonacci é 1.
# - `_` é um caso genérico que captura todos os outros valores de `x`.
# - `(+ (fib (- x 1)) (fib (- x 2)))` define recursivamente que o `x`-ésimo número de 

# Fibonacci é a soma dos dois números de Fibonacci anteriores.
#
# Esta função utiliza recursão para calcular os números de Fibonacci de forma eficiente, 
# conforme definido pela sequência matemática clássica.

# Exemplos Completos
# Combinando Tudo
#
# Vamos combinar as definições de booleans, números naturais e funções em um exemplo completo:

Main =
  let zero    = Zs
  let one     = (Ss Zc)
  let two     = (Ss one)
  let three   = (Ss two)
  let onec    = (Sc Zc)
  let twoc    = (Sc (Sc Zc))
  let threec  = (Sc (Sc (Sc Zc))) 
  let add23   = (add twoc threec)
  let neg     = (not true)
  let exp2    = (Exp2 10)
  let sum1    = (Sum1 1 2)
  let sum2    = (Sum2 1 2)
  let fib10   = (fib 10)
  (fib10)

# O uso da estrutura `bend` no cálculo lambda ocorre da mesma forma que na notação 
# equacional vista anteriormente.

Exp2 = λn (
  bend x = 0 {
    when (< x n):(
      let lft = (fork (+ x 1)) 
      let rgt = (fork (+ x 1))
      let y = (+ lft rgt)
      y)
    else:
      let y = 1
      y
  })

# É importante ressaltar que a definição de funções no cálculo lambda é feita 
# de forma análoga à notação equacional, podendo ser feita de forma mista.

(Sum1 a b) = (+ a b)

# e

Sum2 = λa λb (+ a b)

# são exemplos de definições de funções no cálculo lambda. 
# A diferença está na forma de definir a variável que será utilizada na função, 
# sendo que a primeira é feita de forma análoga à notação equacional e a segunda é 
# feita de forma pura no cálculo lambda.

# Conclusão
#
# O cálculo lambda em Bend, com o suporte a notações como as de Scott e Church,
# proporciona uma maneira poderosa e expressiva de definir e trabalhar com funções
# e tipos de dados. Compreender e utilizar essa notação pode melhorar significativamente
# a clareza e a eficiência do seu código, especialmente ao lidar com funções e tipos de
# dados matemáticos e recursivos.

