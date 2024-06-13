# Tail Recursion em Bend

# A recursão de cauda é uma forma especial de recursão onde a chamada recursiva
# é a última operação a ser executada antes que a função retorne um valor. Isso
# permite que a linguagem de programação otimize a execução, reutilizando o
# mesmo quadro de pilha para chamadas recursivas, em vez de criar novos. Essa
# otimização é conhecida como otimização de recursão de cauda.

# Bend, baseado no HVM (High Order Virtual Machine), é uma linguagem que suporta
# otimização de recursão de cauda. Isso resulta em um uso mais eficiente da
# memória e melhor desempenho para funções recursivas que seguem esse padrão.
# Na verdade, toda recursão em Bend é otimizada como recursão de cauda devido
# às características do HVM.

# Características da Recursão de Cauda
# - Chamada Recursiva Final: A chamada recursiva é a última coisa que acontece
#   na função.
# - Sem Operações Pendentes: Não há operações adicionais após a chamada
#   recursiva. Qualquer cálculo ou operação deve ser completado antes da chamada
#   recursiva.

# Exemplo de Recursão Tradicional vs. Recursão de Cauda

# Recursão Tradicional
# Aqui está um exemplo de uma função recursiva tradicional que calcula o fatorial
# de um número:

def fatorial(n):
  switch n:
    case 0:
      return 1
    case _:
      return n * fatorial(n - 1)

# Nesta versão, a multiplicação `n * fatorial(n - 1)` ocorre após a chamada
# recursiva, o que significa que a operação não é uma recursão de cauda.

# Recursão de Cauda
# Aqui está a mesma função reescrita para usar recursão de cauda:

def fatorial_tail(n):
  return fatorial_tail_aux(n, 1)

def fatorial_tail_aux(n, acum):
  switch n:
    case 0:
      return acum
    case _:
      return fatorial_tail_aux(n - 1, n * acum)

# Nesta versão, a chamada recursiva `fatorial_tail_aux(n - 1, n * acum)` é a
# última operação da função, permitindo que Bend otimize a recursão.

# Exemplo Prático em Bend
# Vamos criar uma função recursiva de cauda para calcular a sequência de
# Fibonacci em Bend:

def fib_tail(n):
  return fib_tail_aux(n, 0, 1)

def fib_tail_aux(n, a, b):
  switch n:
    case 0:
      return a
    case 1:
      return b
    case _:
      return fib_tail_aux(n - 1, b, a + b)

# Nesta função, `fib_tail_aux(n - 1, b, a + b)` é a última operação, garantindo
# que a função é recursiva de cauda.

# Benefícios da Recursão de Cauda
# - Eficiência de Memória: A otimização de recursão de cauda permite que a mesma
#   posição na pilha de chamadas seja reutilizada, evitando o crescimento
#   excessivo da pilha e economizando memória.
# - Desempenho Melhorado: Ao evitar a criação de novos quadros de pilha para
#   cada chamada recursiva, o desempenho pode ser significativamente melhorado.
# - Evita Estouro de Pilha: Em linguagens que não suportam otimização de
#   recursão de cauda, a recursão profunda pode levar a um estouro de pilha. Com
#   otimização de recursão de cauda, isso é mitigado.

# Implementação no HVM
# O HVM, que é a base do Bend, permite uma execução eficiente de recursão devido
# ao seu mecanismo de avaliação preguiçosa e a utilização de "REF nodes" para
# expandir sob demanda. Isso significa que a memória é utilizada de forma
# constante mesmo em recursões profundas.

# Exemplo de implementação no HVM:

# ```haskell
# (IsNat Z)     = True
# (IsNat (S p)) = (IsNat p)
# ```

# Isso não "cresce para sempre" porque, no caso `(IsNat Z)`, ele reduz
# diretamente para `True`, usando uma quantidade constante de memória.

# Conclusão
# A recursão de cauda é uma técnica poderosa que pode levar a programas mais
# eficientes e com melhor desempenho, especialmente em linguagens que suportam
# sua otimização, como Bend. Ao garantir que a chamada recursiva é a última
# operação em uma função, você permite que o compilador ou o interpretador
# otimize a execução, economizando memória e evitando o estouro de pilha.

# Exemplo Prático em Bend:

def main():
  tail_fatorial = fatorial_tail(5)
  factorial = fatorial(5)
  fib = fib_tail(10)
  return fib
