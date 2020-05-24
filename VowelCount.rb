class VowelCount
    def initialize(sentence)
        count(sentence)
    end

    private

    def count(sentence)
        vowels = { "a" => 0, "e" => 0, "i" => 0, "o" => 0 , "u" => 0 }

        sentence.split("").each do |char|
            vowels.each do |vowel, value|
                if char == vowel
                    vowels[vowel] += 1
                end
            end
        end

        puts vowels
    end
end

VowelCount.new("O cachorro uiva faz auuuuu para a lua")