require_relative 'spec_helper'
require_relative '../lib/scrabble_player'

describe 'Testing Scrabble::Player.name' do
    it 'It must raise an IllegalArgument if given a non-String' do
        expect (proc {Scrabble::Player.new(2)} ).must_raise ArgumentError
    end

    it 'must return @name when player calls Scrabble::Player.name' do
        expect(Scrabble::Player.new("Brandi").name).must_equal("Brandi")
    end
end



describe 'Testing play_word when a player plays a new word' do
    it 'must return false when player plays a new word and they have already won(score >= 100)' do
        brandi = Scrabble::Player.new("Brandi")
        expect(brandi.play_word("jump")).must_equal(false) if brandi.total_score >= 100
    end

    it 'must return score of word when player plays a new word' do
        brandi = Scrabble::Player.new("Brandi")
        expect(brandi.play_word("jump")).must_equal(15) if brandi.total_score < 100
    end

    it 'must be push the word into the plays array' do
        brandi = Scrabble::Player.new("Brandi")
        brandi.play_word("jump")
        expect(brandi.plays).must_include("jump")
    end
end



describe 'Testing plays method to return array of words player has played' do
    it 'must return array of words played by player when Scrabble::Player.plays is called' do
        joey = Scrabble::Player.new("Joey")
        joey.play_word("monkey")
        joey.play_word("hippo")
        expect(joey.plays).must_equal(["monkey", "hippo"])
    end
end


describe 'Testing the total score a player has' do
    it 'must return the total score of all the words played' do
        joey = Scrabble::Player.new("Joey")
        expect(joey.total_score).must equal(27) if joey.plays == ["monkey", "hippo"]
    end
end


describe 'Testing if the player has won or not' do
    it 'must return true if the player has more than or equal to 100 total points' do
        joey = Scrabble::Player.new("Joey")
        expect(joey.won?).must_equal(true) if joey.total_score >= 100
    end

    it 'must return false if the player has more than or equal to 100 total points' do
        joey = Scrabble::Player.new("Joey")
        expect(joey.won?).must_equal(false) if joey.total_score < 100
    end
end



describe 'returns highest scoring played word' do
    it 'must return highest scored played word' do
        joey = Scrabble::Player.new("Joey")
        expect(joey.highest_scoring_word).must_equal("monkey") if joey.plays == ["monkey", "hippo"]
    end
end


describe 'returns highest word score' do
    it 'must return the score of the highest scoring word' do
        joey = Scrabble::Player.new("Joey")
        expect(joey.highest_word_score).must_equal(15) if joey.plays == ["monkey", "hippo"]
    end
end
