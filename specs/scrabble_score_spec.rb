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
    expect (Scrabble::Scoring.score("sevenwd")).must_be :>=, 50
  end

  it 'Must return score of 8 if "word".' do
    expect (Scrabble::Scoring.score("word")).must_equal(8)
  end

  it 'Must return score of 19 if "zack". ' do
    expect (Scrabble::Scoring.score("zack")).must_equal(19)
  end

  it 'Must return score of 17 if "jax".' do
    expect (Scrabble::Scoring.score("jax")).must_equal(17)
  end

end


describe 'Testing scrabble_hightest_score_from(array_of_words)' do
    it 'If "jazzily" and "pazazz" are only words in array_of_words, jazzily has max value' do

        expect(Scrabble::Scoring.highest_score_from(["jazzily", "pazazz"])).must_equal("jazzily")
    end

    it 'If "wiz" and "jump" are only words in array_of_words, wiz has max value' do
        expect(Scrabble::Scoring.highest_score_from(["wiz", "jump"])).must_equal("wiz")
    end

    it 'If "juku" and "jump" are only words in array_of_words and "juku" comes first, juku has max value' do
        expect(Scrabble::Scoring.highest_score_from(["juku", "jump"])).must_equal("juku")
    end
end