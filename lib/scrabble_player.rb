## Scrabble Player class
require_relative '../scrabble'
require_relative 'scrabble_tilebag'
require_relative 'scrabble_score'

class Scrabble::Player
    extend Scrabble

    attr_reader :total_score, :plays, :best_word, :tiles
    attr_accessor :name

    def initialize (name)
      raise ArgumentError if name.class != String
      @name = name
      @total_score = 0
      @plays = []
      @tiles = []
    end

    # method that puts played word into plays array, returns false if total_score >= 100 or returns word score:
    def play_word(word)
        return false if @total_score >= Scrabble::MAX_SCORE
        ### CHECK IF PLAYER HAS THOSE TILES
            ## IF NO - RAISE ERROR
            ## IF YES - PROCEED

        word_letters = word.split(//)
        raise ArgumentError if (word_letters - @tiles) != []

        ### - TAKE EACH LETTER FROM TILES IN HAND
        word_letters.each do |delete|
            @tiles.delete_at(@tiles.index(delete))
        end

        @plays << word

        word_score = Scrabble::Scoring.score(word)
        @total_score += word_score
        return word_score
    end

    #checks to see if player has reached max score of 100
    def won?
        @total_score >= Scrabble::MAX_SCORE ? true : false
    end

    #returns highest scoring word a player has played
    def highest_scoring_word
        @best_word = Scrabble::Scoring.highest_score_from(@plays)
    end

    # def plays
    #     @plays
    # end

    #returns highest score players has gotten from a word
    def highest_word_score
        return Scrabble::Scoring.score(@best_word)
    end


    # draws tiles and fills up players hand to 7
    def player_draw_tiles(game_bag)
        raise ArgumentError if @tiles.length > Scrabble::MAX_LETTERS

        until @tiles.length == Scrabble::MAX_LETTERS do
            @tiles << game_bag.draw_tiles
        end
    end
end

 player = Scrabble::Player.new("player")
 game_bag = Scrabble::Tilebag.new
 player.player_draw_tiles(game_bag)
 ap player.tiles
ap player.plays
