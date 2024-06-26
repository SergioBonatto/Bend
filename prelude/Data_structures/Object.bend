# Objetos em Bend
# Em Bend, um objeto define um tipo com um único construtor, similar a uma estrutura (struct), 
# um registro (record) ou uma classe (class). Objetos permitem a criação de 
# tipos de dados complexos com múltiplos campos.
#
# Definindo Objetos
# Para definir um objeto em Bend, utilizamos a palavra-chave `object`. 
# A definição de um objeto especifica os campos que ele possui.
#
# Exemplo: Definindo Objetos Simples
# Aqui estão alguns exemplos de definição de objetos:

# object Pair { fst, snd }

# object Function { name, args, body }

# object Vec { len, data }

# Nesses exemplos, definimos três objetos: Pair, Function e Vec, cada um com seus respectivos campos.
#
# O construtor criado a partir dessa definição tem o mesmo nome que o tipo.
#
# Exemplo: Definindo um Objeto Account
# Vamos definir um objeto Account com dois campos: number e balance.
#

object Account {
  number,
  balance
}

# Neste exemplo, definimos um objeto Account com dois campos: number e balance.
# O construtor Account tem dois parâmetros: number e balance.
#
# Criando e Manipulando Objetos
# Para criar uma instância de um objeto, utilizamos seu construtor. 
# Podemos acessar e manipular os campos de um objeto utilizando a palavra-chave `open`.
#
# Exemplo: Criando uma Instância de Account
# A seguir, um exemplo de funções `createAccount1` e `createAccount2` que criam 
# instâncias do objeto Account:

def createAccount1():
  return Account { number: "1234-56", balance: 10000.00 } 

def createAccount2():
  return Account { number: "1234-57", balance: 20000.00 }

# Função para sacar um valor de uma conta
# Esta função utiliza o campo `balance` do objeto `Account` para calcular o saldo após o saque.
def withdraw(amount, account):
  open Account: account
  return ("Actual balance", (account.balance - amount))

# Função principal que demonstra o uso das funções acima
def main():
  accont1 = createAccount1()
  accont2 = createAccount2()
  return withdraw(6000.00, accont1)

# Neste exemplo:
# - Utilizamos `open` para acessar os campos number e balance do objeto Account.
# - Utilizamos `return` para retornar uma instância do objeto Account com os 
# campos number e balance preenchidos com os valores fornecidos.

