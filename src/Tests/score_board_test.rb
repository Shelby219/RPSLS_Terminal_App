require 'test/unit'
require_relative '../score_board.rb'

# test

class ScoreTest < Test::Unit::TestCase
    def test_add_score
        scoreboard1 = ScoreBoard.new
        outcome = scoreboard1.add_score_player(1)
        assert_equal(scoreboard1.show_score_player, outcome)
    end

    def test_show_score
        outcome = scoreboard1.show_score_player
        assert_equal(1, outcome)
    end
end