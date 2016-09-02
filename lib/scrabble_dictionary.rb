## Scrabble Player class
require_relative '../scrabble'
require 'awesome_print'
require 'csv'

class Scrabble::Dictionary
    @@word_array = []

    def self.get_words
        puts "current directory", `pwd`
        CSV.open("lib/scrabble_words.csv", "r").each do |word|
            word = word[0].to_s.upcase!
            @@word_array << word
        end
    end

    def self.word_array
        @@word_array
    end

    def self.check(word)
        raise ArgumentError if word.class != String
        word.upcase!
        #Scrabble::Dictionary.get_words
        @@word_array.include?(word) ? true : false
    end
end

#Scrabble::Dictionary.get_words
# Scrabble::Dictionary.get_words
# # puts Scrabble::Dictionary.word_array
# puts Scrabble::Dictionary.check("Loaded")
