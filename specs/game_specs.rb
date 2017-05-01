require('minitest/emoji')
require('minitest/autorun')
require_relative('../models/game.rb')

class TestGame < MiniTest::Test

  def setup
    @game1 = Game.new("rock", "scissors")
    @game2 = Game.new("rock", "rock")
  end

  def test_game
    assert_equal("Rock!", @game1.play)
  end

  def test_draw
    assert_equal("Nobody! Try again...", @game2.play)
  end


end