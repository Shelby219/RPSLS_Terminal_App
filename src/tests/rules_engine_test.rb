require 'test/unit'
require_relative '../rules_engine.rb'
require_relative '../weapons.rb'

# TESTS

#All 3 Tests pass YAY
class RulesTest < Test::Unit::TestCase
  def test_draw
    outcome = RulesEngine.round_outcome(:rock, :rock)
    assert_equal(:DRAW, outcome)
  end

  def test_win
    outcome = Weapons::PLAYER_WIN.include?([:SCISSORS, :PAPER])
    assert_equal(true, outcome)
    outcome = Weapons::COMPUTER_WIN.include?([:PAPER, :SCISSORS])
    assert_equal(true, outcome)
  end
end

