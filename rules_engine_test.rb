require 'test/unit'

require_relative 'rules_engine.rb'

#test

class GameTest < Test::Unit::TestCase
    def test_draw
        outcome = RulesEngine::who_won(:spock, :spock)
        assert_equal(:draw, outcome)
    end
    
    def test_win
        outcome = RulesEngine::who_won(:paper, :scissors)
        assert_equal(:second, outcome)
    end

end
    
