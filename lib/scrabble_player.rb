## Scrabble Player class
require_relative '../scrabble'
require_relative 'scrabble_tilebag'
require_relative 'scrabble_score'

class Scrabble::Player
    extend Scrabble

    attr_reader :total_score, :plays, :best_word
    attr_accessor :name

    def initialize (name)
      raise ArgumentError if name.class != String
      @name = name
      @total_score = 0
      @plays = []

    end

    # method that puts played word into plays array, returns false if total_score >= 100 or returns word score:
    def play_word(word)

      return false if @total_score >= Scrabble::MAX_SCORE

      @plays << word

      word_score = Scrabble::Scoring.score(word)
      @total_score += word_score
      return word_score
    end

    def plays
      return @plays
    end


    def total_score
      return @total_score
    end

    def won?
      @total_score >= Scrabble::MAX_SCORE ? true : false
    end

    def highest_scoring_word
      @best_word = Scrabble::Scoring.highest_score_from(@plays)
    end

    def highest_word_score
      return Scrabble::Scoring.score(@best_word)
    end

end
