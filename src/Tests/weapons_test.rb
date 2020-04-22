require 'test/unit'

require_relative 'weapons.rb'

class WeaponsTest < Test::Unit::TestCase
    def test_weapon_player
        assert_include(Weapons::ENTRY, 'r', message = nil)
    end
    
    def test_weapon_choice
        choice = Weapons::COMPUTER_CHOICES[0]
        assert_equal(:ROCK, choice)
    end
end












# Scissors cuts Paper
# Paper covers Rock
# Rock crushes Lizard
# Lizard poisons Spock
# Spock smashes Scissors
# Scissors decapitate Lizard
# Lizard Eats Paper
# Paper disproves Spock
# Spock vaporizes Rock
# Rock crushes Scissors







