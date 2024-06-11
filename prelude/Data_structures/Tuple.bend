# # Tuplas em Bend
# Em Bend, uma tupla pode conter dois ou mais elementos. Os elementos são separados por vírgulas.
#
# ## Definindo Tuplas
# Para definir uma tupla, utilizamos parênteses e separamos os elementos por vírgulas.
#
# Exemplo: Definindo Tuplas Simples
# Aqui estão alguns exemplos de definição de tuplas:

# (1, 2) # tupla com dois elementos

# Podemos fazer pattern matching (correspondência de padrões) em tuplas:
# (fst, snd, ...) = ("Hi", 2, ...)
# # fst = "Hi"
# # snd = 2
# # ... = ...

# (fst, snd) = (1, "Hello", ...)
# # fst = 1
# # snd = ("Hello", ...)

# ## Criando e Manipulando Tuplas
# Para criar e manipular tuplas, utilizamos a sintaxe de parênteses e vírgulas. A seguir, um exemplo de funções que retornam os primeiros, segundos e terceiros elementos de uma tupla:

def return_fst(t):
  (fst, snd) = t
  return fst

def return_snd(t):
  (fst, snd) = t
  return snd

def return_trd(t):
  (fst, snd, trd) = t
  return trd

# Função principal que demonstra o uso das funções acima
def main():
  tupl = (1, 2, 3, 4)
  fst = return_fst(tupl) # 1
  snd = return_snd(tupl) # (2, (3, 4)))
  trd = return_trd(tupl) # (3, 4)
  return trd # (3, 4)

# Neste exemplo:
# - Criamos uma tupla `tupl` com quatro elementos: (1, 2, 3, 4).
# - Utilizamos a função `return_fst` para retornar o primeiro elemento da tupla, isto é, 1.
# - Utilizamos a função `return_snd` para retornar o segundo elemento da tupla, isto é, (2, (3, 4)).
# - Utilizamos a função `return_trd` para retornar o terceiro elemento da tupla, isto é, (3, 4).
