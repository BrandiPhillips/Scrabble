require_relative 'spec_helper'
require_relative '../lib/scrabble_tilebag'


describe 'Testing Scrabble::Tilebag.new' do

  it 'when initialize a new tilebag is created in the form of array' do
    expect (Scrabble::Tilebag.new).must_be_kind_of Array
  end

  it "must not be an empty array upon initializing" do
    expect (Scrabble::Tilebag.new.length).must_be :>, 0
  end

end

describe 'Testing Scrabble::Tilebag.draw_tiles(num)' do

  it 'must return an array of random tiles removed from default set' do
    game_tilebag = Scrabble::Tilebag.new
    player1_hand = game_tilebag.draw_tiles(4)
    expect (player1_hand).must_be_kind_of Array
  end

  it 'must be the lenth of the number passed as argument' do
    game_tilebag = Scrabble::Tilebag.new
    player1_hand = game_tilebag.draw_tiles(4)
    expect (player1_hand.length).must_equal(4)
  end

  it 'must remove tiles from game_tilebag' do
    game_tilebag = Scrabble::Tilebag.new
    player1_hand = game_tilebag.draw_tiles(4)
    expect (game_tilebag.length).must_equal(94)
  end

  it 'It must raise an IllegalArgument if given a non-String' do
      game_tilebag = Scrabble::Tilebag.new
      expect (proc {game_tilebag.draw_tiles("four")} ).must_raise ArgumentError
  end

end

describe 'Testing Scrabble::Tilebag.tiles_remaining' do

  it 'must return the number of remaining tiles available' do
    game_tilebag = Scrabble::Tilebag.new
    player1_hand = game_tilebag.draw_tiles(4)
    expect (game_tilebag.tiles_remaining).must_equal(game_tilebag.length)
  end
  
end
