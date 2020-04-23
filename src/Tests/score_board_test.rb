require 'test/unit'
require_relative '../score_board.rb'

# test

class ScoreTest < Test::Unit::TestCase
    def test_add_score
        outcome = ScoreBoard.new.add_score_player(1)
        assert_equal(@player_score, outcome)
    end

    def test_show_score
    end
end