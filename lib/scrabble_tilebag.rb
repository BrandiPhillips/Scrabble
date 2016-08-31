## Scrabble Player class
require_relative '../scrabble'
require 'awesome_print'

class Scrabble::Tilebag
    extend Scrabble
    attr_reader :tilebag, :player_hand

    def initialize
        # tiles = Scrabble::TILES
        # ap tiles
        @tilebag = Scrabble::TILES.flatten.shuffle
        #ap @tilebag
    end

    def draw_tiles(num)
        @player_hand = []
        raise ArgumentError if num.class != Fixnum
        @player_hand << @tilebag.pop(num)
    end

    def tiles_remaining
        return @tilebag.length
    end

end
