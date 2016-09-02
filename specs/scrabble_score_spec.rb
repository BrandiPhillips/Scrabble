require_relative 'spec_helper'
require_relative '../lib/scrabble_score'


describe 'Testing scrabble_score' do
  it 'It must raise an IllegalArgument if given a non-String' do
    expect (proc {Scrabble::Scoring.score(2)} ).must_raise ArgumentError
  end

  it 'It must raise an IllegalArgument if given an invalid entry' do
    expect (proc {Scrabble::Scoring.score("ac2*")} ).must_raise ArgumentError
  end

  it 'Must return greater than 50 when word is equal to 7 tiles' do
    expect (Scrabble::Scoring.score("SEVENWD")).must_be :>=, 50
  end

  it 'Must return score of 8 if "word".' do
    expect (Scrabble::Scoring.score("WORD")).must_equal(8)
  end

  it 'Must return score of 19 if "ZACK". ' do
    expect (Scrabble::Scoring.score("ZACK")).must_equal(19)
  end

  it 'Must return score of 17 if "JAX".' do
    expect (Scrabble::Scoring.score("JAX")).must_equal(17)
  end

end


describe 'Testing scrabble_hightest_score_from(array_of_words)' do
    it 'If "JAZZILY" and "PAZAZZ" are only words in array_of_words, JAZZILY has max value' do

        expect(Scrabble::Scoring.highest_score_from(["JAZZILY", "PAZAZZ"])).must_equal("JAZZILY")
    end

    it 'If "wiz" and "jump" are only words in array_of_words, wiz has max value' do
        expect(Scrabble::Scoring.highest_score_from(["WIZ", "JUMP"])).must_equal("WIZ")
    end

    it 'If "juku" and "JUMP" are only words in array_of_words and "JUKU" comes first, JUKU has max value' do
        expect(Scrabble::Scoring.highest_score_from(["JUKU", "JUMP"])).must_equal("JUKU")
    end
end
