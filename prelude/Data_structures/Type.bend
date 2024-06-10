# Tipos em Bend
Em Bend, tipos são fundamentais para definir a estrutura e a natureza dos dados que um programa pode manipular. Eles permitem a criação de estruturas de dados complexas e ajudam a garantir a integridade e a consistência dos dados ao longo da execução do programa.

## Definindo Tipos
Para definir um tipo em Bend, utilizamos a palavra-chave type. Um tipo pode ter múltiplos construtores, cada um com seus próprios campos. Aqui está a sintaxe básica para a definição de um tipo:

```
type TypeName:
  Constructor1 {field1, field2, ...}
  Constructor2 {field1, field2, ...}
  ...
```

### Exemplo: Definindo um Tipo Lista
Vamos revisar a definição do tipo List que já vimos:

```
type List:
  Cons {head, ~tail}
  Nil
```

Neste exemplo, o tipo List é definido com dois construtores:

- Cons: Tem dois campos, head e tail.
- Nil: Não possui campos e representa uma lista vazia.

## Criando Instâncias de Tipos
Para criar uma instância de um tipo definido, utilizamos seus construtores. Aqui está um exemplo de como criar uma lista:

```
my_list = List/Cons(1, List/Cons(2, List/Cons(3, List/Nil)))
```


