class SeniorTest
    def initialize(skills)
        if !skills.is_a? Hash
            puts "Parâmetro deve ser um Hash."
            return
        end

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
