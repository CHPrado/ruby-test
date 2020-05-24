# SeniorTest

Avalia a senioridade de um desenvolvedor,
com base nos dados de entrada será retornado o nível da pessoa.

## Dados de entrada

- person_1 = [{ ruby: 1, db: 1, agile: 0, pattern: 0 }]
- person_2 = [{ ruby: 5, db: 3, agile: 1, pattern: 2 }]
- person_3 = [{ ruby: 5, db: 4, agile: 3, pattern: 3, server: 2 }]


## Saídas

- Caso a soma de skills for =< 7, deverá ser retornando: Júnior – Pontuação (X pontos)
- Caso a soma de skills for >7 e <= 11, deverá retornar: Pleno – Pontuação (X pontos)
- Caso a soma de skills from > 11, deverá retornar: Sênior – Pontuação (X pontos)

# VowelCount

Retorna as vogais e quantidade de cada uma em uma frase.

## Entrada

> O cachorro uiva faz auuuuu para a lua

## Formato da saída

```
[{a: <qtd>, e: <qtd>, i: <qtd> , o: <qtd>, u: <qtd>}]
```

## Como usar

### classe SeniorTest

```
    => irb

    => require './lib/SeniorTest.rb'

    => SeniorTest.new({ruby: 4, db: 3})
```

Retorno:

> Júnior - Pontuação (7 pontos)

### classe VowelCount

```
    => irb

    => require './lib/VowelCount.rb'

    => VowelCount.new("testing sentence")
```

Retorno:

> {"a"=>0, "e"=>4, "i"=>1, "o"=>0, "u"=>0}

### Executar Testes

```
    => rspec spec/lib/SeniorTest_spec.rb
    => rspec spec/lib/VowelCount_spec.rb

