# frozen_string_literal: true

require 'test/unit'
require_relative '../rules_engine.rb'

# test

class RulesTest < Test::Unit::TestCase
  def test_draw
    # outcome = RulesEngine::who_won(:rock, :rock)
    # outcome = RulesEngine::who_won(:paper, :paper)
    # outcome = RulesEngine::who_won(:scissors, :scissors)
    # outcome = RulesEngine::who_won(:spock, :spock)
    # outcome = RulesEngine::who_won(:lizard, :lizard)
    # assert_equal(:draw, outcome)
    outcome = RulesEngine.round_draw(:rock, :rock)
    assert_equal(:draw, outcome)
    # outcome = RulesEngine::round_draw1(:rock, :rock)
    # assert_equal(:draw, outcome)
  end

  def test_win
    outcome = RulesEngine.player_win(:scissors, :paper)
    assert_equal(:first, outcome)
    outcome = RulesEngine.computer_win(:scissors, :paper)
    assert_equal(:first, outcome)
  end
end

# outcome = RulesEngine::who_won(:paper, :rock)
# outcome = RulesEngine::who_won(:rock, :scissors)
# outcome = RulesEngine::who_won(:lizard, :spock)
# outcome = RulesEngine::who_won(:spock, :scissors)
# outcome = RulesEngine::who_won(:scissors, :lizard)
# outcome = RulesEngine::who_won(:lizard, :paper)
# outcome = RulesEngine::who_won(:paper, :spock)
# outcome = RulesEngine::who_won(:rock, :scissors)
