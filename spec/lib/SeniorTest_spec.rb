require 'spec_helper'
require 'SeniorTest'

describe SeniorTest do
    it "Should return Junior if points are less than 7" do
        expect { SeniorTest.new({ ruby: 1, db: 1, agile: 0, pattern: 0 }) }.to output("Júnior - Pontuação (2 pontos)\n").to_stdout
    end

    it "Should return Pleno if points are more than 7 and less than 12" do
        expect { SeniorTest.new({ ruby: 5, db: 3, agile: 1, pattern: 2 }) }.to output("Pleno - Pontuação (11 pontos)\n").to_stdout
    end

    it "Should return Senior if points are more than 11" do
        expect { SeniorTest.new({ ruby: 5, db: 4, agile: 3, pattern: 3, server: 2 }) }.to output("Senior - Pontuação (17 pontos)\n").to_stdout
    end

    it "Should return error message for invalid input" do
        expect { SeniorTest.new({ ruby: -1, db: 4, agile: 6, pattern: 3, server: 2 }) }.to output("Valor inválido para a skill: 'ruby'. Valor deve estar entre 0 e 5.\n").to_stdout
    end

    it "Should not classify when parameter is not a hash." do
        expect { SeniorTest.new(123) }.to output("Parâmetro deve ser um Hash.\n").to_stdout
    end
end