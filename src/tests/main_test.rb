require 'test/unit'
require_relative '../main.rb'



class MainTest < Test::Unit::TestCase

    #PASSED
#     def test_play_again_yes
#     puts "Would you like to play again? (y) or (n)?"
#     again = gets.chomp
#     outcome = again
#     assert_equal("y", outcome)
#     end

#    #PASSED
#     def test_play_again_no
#         puts "Would you like to play again? (y) or (n)?"
#         again = gets.chomp
#         outcome = again
#         assert_equal("n", outcome)
#     end

    #PASSED
    def test_wrong_input
        again = "dkfhsdkhf"
        outcome = again
        assert_not_equal("n", outcome)
    end

     #PASSED- tested for both yes and no input
    def test_restart
        puts "Would you like to play again? (y) or (n)?"
        again = gets.chomp
        case again
          when "y"
            return :begin
           when "n"
            return :end
        end
        assert_equal(:begin , again) 
    end
end