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



    def self.highest_score_from(array_of_words)
      array_of_words = array_of_words
      word_score = []
      max_words = []
      # iterate over the array of words to get the score of each
      array_of_words.each do |word|
        word_score << Scrabble::Scoring.score(word)
      end
      # find the max score
      high_score = word_score.max
      puts high_score

      # see if there are more than one word with same max score and return an array of those words to evaluate further
      index = 0
      word_score.each do |score|
        if score == high_score
          max_words << array_of_words[index]
        end
          index += 1
      end
      print max_words

      winner = false
      # evaluating words
      if max_words.length == 1
        winner = max_words[0]
      elsif max_words.length >= 2
        max_words.each do |word|
          if word.length == 7
            winner = word
          end
        end
      end

      # evaluate more words
      if winner = false
        winner = max_words.min_by {|x| x.length}
      elsif max_words
        winner =
      end

    end


end
#
# puts Scrabble::Scoring.score("jazzily")
# puts Scrabble::Scoring.score("pazazz")
# puts Scrabble::Scoring.score("word")
# puts Scrabble::Scoring.score("jump")
puts Scrabble::Scoring.highest_score_from(["jump", "word", "quick", "jeez"])
# puts Scrabble::Scoring.score("3abd34")
# Scrabble::Scoring.score("sevenmn")
