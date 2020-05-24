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

