# Comentários em Bend
# Em Bend, os comentários são usados para adicionar explicações ou notas ao código, 
# que são ignoradas pelo compilador. Comentários são úteis para documentar o código 
# e torná-lo mais legível para outros desenvolvedores (ou para você mesmo no futuro).

# Comentários de Linha Única
# Comentários de linha única começam com o símbolo de número (`#`). 
# Todo o texto após o símbolo de número na mesma linha é considerado um comentário e 
# é ignorado pelo compilador.

# Exemplo: Comentários de Linha Única
# Aqui está um exemplo de uso de comentários de linha única em Bend:
def exemplo():
  # Este é um comentário de linha única
  x = 10  # Este comentário explica a variável x
  return x

# Comentários Múltiplas Linhas
# Bend não possui um mecanismo nativo para comentários de múltiplas linhas, 
# como blocos de comentários encontrados em outras linguagens. 
# No entanto, você pode empilhar vários comentários de linha única para criar um comentário 
# de múltiplas linhas.

# Exemplo: Comentários de Múltiplas Linhas
# Aqui está um exemplo de uso de comentários de múltiplas linhas em Bend:
def exemplo_multilinha():
  # Este é um comentário de múltiplas linhas
  # que explica o código abaixo em detalhes.
  # Cada linha começa com o símbolo de número.
  y = 20
  return y

# Melhorando a Legibilidade com Comentários
# Os comentários devem ser usados para esclarecer o propósito do código, 
# explicar lógica complexa e fornecer contexto adicional. 
# Evite comentários desnecessários ou óbvios que não agregam valor à compreensão do código.

# Exemplo: Comentários Claros e Úteis
# Aqui está um exemplo de como usar comentários de forma clara e útil:

def fib(n):
  # Função para calcular o n-ésimo número de Fibonacci
  switch n:
    case 0:
      return 0  # Retorna 0 se n for 0
    case 1:
      return 1  # Retorna 1 se n for 1
    case _:
      # Calcula Fibonacci recursivamente para n-1 e n-2
      return fib(n - 1) + fib(n - 2)

# Resumo
# - Comentários de linha única: Começam com `#`.
# - Comentários de múltiplas linhas: Empilhe vários comentários de linha única.

# Comentários são uma ferramenta poderosa para melhorar a legibilidade e a manutenção do código. 
# Use-os sabiamente para documentar seu código em Bend.

def main():
  exemplo = exemplo() # Deve retornar 10
  exemplo_multilinha = exemplo_multilinha() # Deve retornar 20
  fib = fib(5) # Deve retornar 5
  return fib
