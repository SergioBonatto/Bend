# Números em Bend
# Em Bend, você pode trabalhar com vários tipos de números, incluindo inteiros não assinados, 
# inteiros assinados e números de ponto flutuante, todos com 24 bits de largura. 
# Além disso, você pode usar literais binários e hexadecimais, 
# bem como literais de caracteres que podem ser convertidos para `u24`.

# Tipos de Números
# Inteiros Não Assinados (Unsigned Integers)
# Números inteiros não assinados de 24 bits podem ser usados para representar 
# valores inteiros positivos.
numero_unsigned = 420  # Inteiro não assinado (24 bits)

# Inteiros Assinados (Signed Integers)
# Números inteiros assinados de 24 bits podem ser usados para representar valores 
# inteiros positivos e negativos.
numero_signed = +69  # Inteiro assinado (24 bits)

# Números de Ponto Flutuante (Floating Point)
# Números de ponto flutuante de 24 bits podem ser usados para representar valores 
# numéricos com parte fracionária.
numero_float = 1.4  # Ponto flutuante (24 bits)

# Literais Binários e Hexadecimais
# Binários
# Você pode usar literais binários para representar números em base 2.
numero_binario = 0b100_100  # Binário

# Hexadecimais
# Você pode usar literais hexadecimais para representar números em base 16.
numero_hexadecimal = 0x123_abc  # Hexadecimal
numero_hexadecimal_assinado = -0xbeef  # Hexadecimal assinado

# Literais de Caracteres
# Literais de caracteres são representados por um único caractere entre aspas simples. 
# Eles aceitam caracteres Unicode e escapes Unicode na forma '\u{valor hexadecimal}'.
caractere = 'x'

# Conversão de Literais de Caracteres para `u24`
# Um literal de caractere é dessugarado para um inteiro não assinado de 24 bits (`u24`). 
# Isso significa que cada caractere pode ser tratado como um número inteiro correspondente 
# ao seu ponto de código Unicode.

# Testando a função de conversão
def main():
  ex01 = 'A'        # Deve retornar 65 (valor Unicode de 'A')
  ex02 = '\u{123}'  # Deve retornar 291 (valor Unicode de '\u{123}')
  return ex02

# Suporte a Pontos de Código Unicode
# Bend suporta pontos de código Unicode até 0xFFFFFF, permitindo a representação de 
# uma ampla gama de caracteres internacionais.

# Resumo
# - Inteiros não assinados: `420`
# - Inteiros assinados: `+69`
# - Números de ponto flutuante: `1.4`
# - Binários: `0b100_100`
# - Hexadecimais: `0x123_abc`, `-0xbeef`
# - Literais de caracteres: `'x'`, `'\u{123}'`
# - Conversão de caracteres para `u24`: Cada caractere é tratado como um inteiro `u24` 
# correspondente ao seu ponto de código Unicode.

# Bend oferece uma gama de tipos numéricos e suporte a literais de caracteres que 
# facilitam o trabalho com dados numéricos e de texto de forma eficiente e intuitiva.

