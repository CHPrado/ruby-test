class SeniorTest
    def initialize(skills)
        classify(skills)
    end

    private

    def validateInput(value)
        return (0..5).include?(value)
    end

    def classify(skills)
        output = ""
        points = 0
        error = false

        skills.each do |skill, value|
            if !validateInput(value)
                output = "Valor inválido para a skill: '#{skill}'. Valor deve estar entre 0 e 5."
                error = true
                break
            end

            points += value
        end

        if !error
            if points <= 7
                output = "Júnior - Pontuação (#{points} pontos)"
            elsif points > 7 and points <= 11
                output = "Pleno - Pontuação (#{points} pontos)"
            elsif
                output = "Senior - Pontuação (#{points} pontos)"
            end
        end

        puts output
    end
end

person_1 = { ruby: 1, db: 1, agile: 0, pattern: 0 }
person_2 = { ruby: 5, db: 3, agile: 6, pattern: 2 }
person_3 = { ruby: 5, db: 4, agile: 3, pattern: 3, server: 2 }

SeniorTest.new(person_1)
SeniorTest.new(person_2)
SeniorTest.new(person_3)