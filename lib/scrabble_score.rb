#scrabble scoring
require_relative 'scrabble'

class Scrabble::Scoring
    extend Scrabble

    def self.score(word)
        # Scrabble::LETTER_SCORE
        raise ArgumentError if word.class != String
        raise ArgumentError if !word.match(/^[[:alpha:]]+$/)
        word_value = 0
        word.length == Scrabble::MAX_LETTERS ? word_value += 50 : 0
        word.downcase!

        ## Loop to compare letters with letter values
        word_array = word.split(//)
        word_array.each do |letter|
            Scrabble::LETTER_SCORE.each do |key, value|
              word_value += value if key.include?(letter.to_s)
            end
        end
        return word_value
    end



    def self.highest_score_from(array_of_words)
      array_of_words = array_of_words
      word_score = []
      max_words = []

      # iterate over the array of words to get the score of each
      array_of_words.each {|word| word_score << Scrabble::Scoring.score(word)}

      # find the max score
      high_score = word_score.max
      # puts high_score

      # see if there are more than one word with same max score and return an array of those words to evaluate further
      index = 0
      word_score.each do |score|
        max_words << array_of_words[index] if score == high_score
        index += 1
      end
      # print max_words

      best_word = false
      # evaluating words
      best_word = max_words[0] if max_words.length == 1

      if best_word == false
        max_words.each do |word|
          best_word = word if word.length == Scrabble::MAX_LETTERS
        end
      end

      # evaluate more words returns shortest word out of high scores, will return the first index if there are multiple high score words with same character length.
      best_word = max_words.min_by {|x| x.length} if best_word == false

      return best_word
    end


end
#
# puts Scrabble::Scoring.score("jazzily")
# puts Scrabble::Scoring.score("pazazz")
# puts Scrabble::Scoring.score("word")
puts Scrabble::Scoring.score("jump")
#puts Scrabble::Scoring.highest_score_from(["jump", "word", "quick", "jeez"])
# puts Scrabble::Scoring.score("3abd34")
# Scrabble::Scoring.score("sevenmn")
