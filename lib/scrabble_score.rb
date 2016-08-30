#scrabble scoring
 require_relative '../scrabble'

class Scrabble::Scoring
    extend Scrabble

    def self.score(word)
        # Scrabble::LETTER_SCORE
        raise ArgumentError if word.class != String
        raise ArgumentError if !word.match(/^[[:alpha:]]+$/)
        word_value = 0
        word.length == 7 ? word_value += 50 : 0
        word.downcase!

        ## Loop to compare letters with letter values
        word_array = word.split(//)
        word_array.each do |letter|
            Scrabble::LETTER_SCORE.each do |key, value|
                if key.include?(letter.to_s)
                    word_value += value
                end
            end
        end
        return word_value
    end


end

#
# puts Scrabble::Scoring.score("3abd34")
# Scrabble::Scoring.score("sevenmn")
