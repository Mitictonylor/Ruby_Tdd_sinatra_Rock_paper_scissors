require 'minitest/autorun'
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative '../models/logic'

class TestLogic < Minitest::Test

  def test_player1_rock_wins_on_scissors()
    assert_equal("Player 1 wins by playing rock", Logic.rock_paper_scissors('rock','scissors'))
  end

  def test_player1_rock_loose_on_paper()
    assert_equal("Player 2 wins by playing paper", Logic.rock_paper_scissors('rock','paper'))
  end

  def test_player1_and_player2_playing_the_same()
    assert_equal("It's a draw", Logic.rock_paper_scissors('rock','rock'))
    assert_equal("It's a draw", Logic.rock_paper_scissors('paper','paper'))
    assert_equal("It's a draw", Logic.rock_paper_scissors('scissors','scissors'))
  end

  def test_player1_scissors_wins_on_paper()
    assert_equal("Player 1 wins by playing scissors", Logic.rock_paper_scissors('scissors','paper'))
  end

  def test_player1_scissors_loose_on_rock()
    assert_equal("Player 2 wins by playing rock", Logic.rock_paper_scissors('scissors','rock'))
  end

  def test_player1_paper_wins_on_rock()
    assert_equal("Player 1 wins by playing paper", Logic.rock_paper_scissors('paper','rock'))
  end

  def test_player1_paper_loose_on_scissors()
    assert_equal("Player 2 wins by playing scissors", Logic.rock_paper_scissors('paper','scissors'))
  end

end
