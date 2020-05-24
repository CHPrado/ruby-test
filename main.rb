require './lib/SeniorTest'
require './lib/VowelCount'

person_1 = { ruby: 1, db: 1, agile: 0, pattern: 0 }
person_2 = { ruby: 5, db: 3, agile: 1, pattern: 2 }
person_3 = { ruby: 5, db: 4, agile: 3, pattern: 3, server: 2 }

SeniorTest.new(person_1)
SeniorTest.new(person_2)
SeniorTest.new(person_3)

VowelCount.new("O cachorro uiva faz auuuuu para a lua")
