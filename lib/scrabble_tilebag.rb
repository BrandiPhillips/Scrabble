## Scrabble Player class
require_relative '../scrabble'
require 'awesome_print'

class Scrabble::Tilebag
    extend Scrabble
    attr_reader :tilebag

    def initialize
        @tilebag = Scrabble::TILES.flatten.shuffle
    end

    def draw_tiles
        @tilebag.pop
    end

    def tiles_remaining
        return @tilebag.length
    end

end
