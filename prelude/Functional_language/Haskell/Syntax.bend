# Notação Equacional em Bend
#
# Bend é uma linguagem que permite a notação equacional no estilo de Haskell, 
# porém com uma sintaxe mais simples e direta.
#
# Essa notação é muito útil para definir funções matemáticas e recursivas, 
# pois permite uma representação clara e concisa.
#
# A notação equacional em Bend é uma ferramenta poderosa para a definição 
# de funções matemáticas e recursivas, podendo ser usada para resolver uma 
# grande variedade de problemas de forma simples e eficiente. Isso é ideal 
# para quem busca utilizar a programação funcional.

## Como Escrever Funções na Notação Equacional

### Estrutura Básica
# A notação equacional em Bend segue uma estrutura simples:
#
# Função parâmetros = expressão
#
# - `Função` é o nome da função.
# - `parâmetros` são os parâmetros que a função recebe.
# - `expressão` é o resultado ou a operação que a função deve realizar.

### Exemplos Simples

#### Função de Somatório
# Vamos criar uma função que calcula o somatório de 0 até n:
Sum 0 = 0
Sum n = (+ n (Sum (- n 1)))

# - `Sum 0 = 0` define que o somatório de 0 é 0.
# - `Sum n = (+ n (Sum (- n 1)))` define que o somatório de `n` é `n` mais o somatório de `n-1`.

#### Função Fatorial
# Uma função para calcular o fatorial de um número:
Factorial 0 = 1
Factorial n = (* n (Factorial (- n 1)))

# - `Factorial 0 = 1` define que o fatorial de 0 é 1.
# - `Factorial n = (* n (Factorial (- n 1)))` define que o fatorial de `n` é `n` vezes o fatorial de `n-1`.

#### Função de Fibonacci
# Uma função para calcular o n-ésimo número de Fibonacci:
Fibonacci 0 = 0
Fibonacci 1 = 1
Fibonacci n = (+ (Fibonacci (- n 1)) (Fibonacci (- n 2)))

# - `Fibonacci 0 = 0` define que o 0º número de Fibonacci é 0.
# - `Fibonacci 1 = 1` define que o 1º número de Fibonacci é 1.
# - `Fibonacci n = (+ (Fibonacci (- n 1)) (Fibonacci (- n 2)))` define que o `n`-ésimo número de Fibonacci é a soma dos dois anteriores.

### Uso de Tipos Definidos pelo Usuário
# A notação equacional também pode ser usada com tipos definidos pelo usuário, como listas, árvores, etc.

#### Definição de uma Lista
# Primeiro, vamos definir um tipo `UserList` que representa uma lista:
type UserList:
  Cons { head, ~tail } 
  Nil

# - `Cons` é um construtor que tem um `head` e um `tail`.
# - `Nil` representa uma lista vazia.

#### Função de Comprimento de uma Lista
# Agora, uma função que calcula o comprimento de uma lista:
Length UserList/Nil = 0
Length (UserList/Cons head tail) = (+ 1 (Length tail))

# - `Length UserList/Nil = 0` define que o comprimento de uma lista vazia é 0.
# - `Length (UserList/Cons head tail) = (+ 1 (Length tail))` define que o comprimento de uma lista não vazia é 1 mais o comprimento da `tail`.

### Uso do Bend na Notação Equacional

# Criando uma função que calcula `2^n` usando o `bend` na notação tradicional:
def exp2(n):
  bend x = 0:
    when x < n:
      lft = fork(x + 1)
      rgt = fork(x + 1)
      y = lft + rgt
    else:
      y = 1
  return y

# Neste exemplo, a função `exp2` calcula `2^n` criando uma árvore de forma recursiva.
# Se `n` for 0, a função retorna 1; caso contrário, a função cria dois ramos e soma 
# os resultados de forma recursiva.

#### Representação gráfica da árvore criada pela função `exp2` para n = 3:
# x = 0                 [ ]
#                      /   \
#                     /     \
#                    /       \
#                   /         \
#                  /           \
#                 /             \
# x = 1          [ ]             [ ]
#               /  \            /  \
#              /    \          /    \
#             /      \        /      \
# x = 2      [ ]     [ ]     [ ]     [ ]
#            / \    /  \     / \    /  \
# x = 3    [1] [1] [1] [1] [1] [1] [1] [1]
#
# Ao final, cada folha recebe o valor 1 e a soma de todas as folhas é `2^n`.

# É possível usar essa notação enquanto se usa a equacional, 
# mas para padronização, há uma forma equivalente de escrever a função `exp2` usando a notação equacional:

Exp2 n =
  (bend x = 0 {
    when (< x n):(
      let lft = (fork (+ x 1)) 
      let rgt = (fork (+ x 1))
      let y = (+ lft rgt)
      y)
    else:
      let y = 1
      y
  })

# A função `Exp2` é equivalente à função `exp2` e usa a notação equacional para definir a função de maneira clara e concisa.

# A sintaxe do `bend` na notação equacional é a seguinte: 
# bend bind=term, ... { when cond: term; else: term; }

## Exemplo Completo

# Vamos combinar tudo em um exemplo completo:
Main =
  let soma      = ("Sum", (Sum 5))
  let fatorial  = ("Factorial", (Factorial 5))
  let fibonacci = ("Fibonacci", (Fibonacci 6))
  let list      = (UserList/Cons ("soma", soma) 
                  (UserList/Cons ("fatorial", fatorial) 
                  (UserList/Cons ("fibonacci", fibonacci) 
                  UserList/Nil)))
  let length    = ("Length original List", (Length list))
  let exp2a     = ("exp2: ", (exp2(10)))
  let exp2b     = ("Exp2: ", (Exp2 10))
  let result    = [soma, fatorial, fibonacci, length, exp2a, exp2b]
  result

# Este exemplo:
#
# - Define e usa funções de somatório, fatorial e Fibonacci.
# - Cria uma lista com os resultados.
# - Calcula o comprimento da lista.
# - Calcula `2^n` de duas maneiras diferentes.
# - Cria uma nova lista com os resultados anteriores.
# - Retorna a nova lista.

# Conclusão
# A notação equacional em Bend facilita a definição de funções matemáticas e 
# recursivas de maneira clara e concisa. Isso torna o Bend uma linguagem poderosa 
# para resolver uma ampla variedade de problemas utilizando programação funcional.
#
# Compreender e utilizar essa notação pode melhorar significativamente a clareza 
# e a eficiência do seu código, especialmente ao lidar com problemas matemáticos 
# e recursivos.
