require_relative 'spec_helper'
require_relative '../lib/scrabble_dictionary'
require 'csv'


describe 'Testing scrabble_dictionary check method' do
  it 'It must raise an IllegalArgument if given a non-String' do
    Scrabble::Dictionary.get_words
    expect (proc {Scrabble::Dictionary.check(2)} ).must_raise ArgumentError
  end

  it 'must return true if the word is found in dictionary' do
      Scrabble::Dictionary.get_words
      expect(Scrabble::Dictionary.check("AAL")).must_equal(true)
  end

  it 'must return false if the word is not found in dictionary' do
      Scrabble::Dictionary.get_words
      expect(Scrabble::Dictionary.check("JFKDLSN")).must_equal(false)
  end

end


describe 'Testing reading in dictionary words' do
    it 'must be an array' do
        Scrabble::Dictionary.get_words
        expect(Scrabble::Dictionary.word_array).must_be_kind_of Array
    end

    it 'must contain strings' do
        Scrabble::Dictionary.get_words
        expect(Scrabble::Dictionary.word_array[50]).must_be_kind_of String
    end
end
