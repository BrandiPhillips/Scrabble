# scrabble module
require 'awesome_print'

module Scrabble
    MAX_LETTERS = 7

    MAX_SCORE = 100

    LETTER_SCORE = {
        ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"] => 1,
        ["d", "g"] => 2,
        ["b", "c", "m", "p"] => 3,
        ["f", "h", "v", "w", "y"] => 4,
        ["k"] => 5,
        ["j", "x"] => 8,
        ["q", "z"] => 10
    }

    TILES = [
        ["A", "A", "A", "A", "A", "A", "A", "A", "A"],
        ["B", "B"],
        ["C", "C"],
        ["D", "D", "D", "D"],
        ["E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E"],
        ["F", "F"],
        ["G", "G", "G"],
        ["H", "H"],
        ["I", "I", "I", "I", "I", "I", "I", "I", "I"],
        ["J"],
        ["K"],
        ["L", "L", "L", "L"],
        ["M", "M"],
        ["N", "N", "N", "N", "N", "N"],
        ["O", "O", "O", "O", "O", "O", "O", "O"],
        ["P", "P"],
        ["Q"],
        ["R", "R", "R", "R", "R", "R"],
        ["S", "S", "S", "S"],
        ["T", "T", "T", "T", "T", "T"],
        ["U", "U", "U", "U"],
        ["V", "V"],
        ["W", "W"],
        ["X"],
        ["Y", "Y"],
        ["Z"]
    ]

    DICTIONARY = ["jump", "monkey", "donkey", "jazzily", "pazazz", "word", "zack", "jax"]

end

#ap Scrabble::TILES
