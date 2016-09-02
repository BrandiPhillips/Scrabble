# scrabble module
require 'awesome_print'

module Scrabble
    MAX_LETTERS = 7

    MAX_SCORE = 100
    
    LETTER_SCORE = {
       ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"] => 1,
       ["D", "G"] => 2,
       ["B", "C", "M", "P"] => 3,
       ["F", "H", "V", "W", "Y"] => 4,
       ["K"] => 5,
       ["J", "X"] => 8,
       ["Q", "Z"] => 10
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
