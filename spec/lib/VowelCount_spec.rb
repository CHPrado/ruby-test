require "spec_helper"
require "VowelCount"

describe VowelCount do
    it "Should count a sentence vowels" do
        expect { VowelCount.new("Testing sentence") }.to output("{\"a\"=>0, \"e\"=>4, \"i\"=>1, \"o\"=>0, \"u\"=>0}\n").to_stdout
    end

    it "Should not count when parameter is not of type string" do
        expect { VowelCount.new(123) }.to output("Parâmetro deve ser uma String.\n").to_stdout
    end
end
