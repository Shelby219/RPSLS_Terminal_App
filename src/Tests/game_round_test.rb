require 'test/unit'
require_relative '../game_round.rb'
require_relative '../weapons.rb'

# test

class GameRoundTest < Test::Unit::TestCase
  include Player
  #PASSED
    def test_player_module
    answer = "r"
    test_a = Weapons::ENTRY.key?(answer)
    assert_equal(true, test_a)
    end

#PASSED
    #  def test_play_method
    #     newgame = GameRound.new.play
    #     player = player_choice
    #     assert_equal(:ROCK, player)
    #  end

#PASSED
     def test_get_score
        test_score = GameRound.new.get_score
        assert_equal(nil, test_score )
     end

#PASSED
     def test_instance
        test = GameRound.new
        v = test.instance_variable_get(:@player_score)
        assert_equal(0, v)
     end

#PASSED
#testing the winners equalling the winning score
    def test_winner_declare
        test_win = GameRound.new
        pl = test_win.instance_variable_get(:@player_score)
        cm = test_win.instance_variable_get(:@computer_score)
        winning_score = test_win.instance_variable_get(:@winning_score)
        result_player = pl == winning_score
        assert_equal(false, result_player)
        result_computer = cm == winning_score
        assert_equal(false,  result_computer)
     end


end