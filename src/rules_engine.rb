# RULES ENGINE

require_relative 'weapons.rb'

module RulesEngine
  include Weapons
  module_function

  #THIS METHOD IS WORKING
  def round_outcome(player_c, computer_c) 
   if Weapons::PLAYER_WIN.include?([player_c, computer_c])
    return :PLAYERWIN
   elsif Weapons::COMPUTER_WIN.include?([player_c, computer_c])
    return :COMPUTERWIN 
   elsif player_c == computer_c
    return :DRAW
   end
  end


  #NICE TO HAVE FEATURE IS THE ACTUAL NAMES FOR THE WINNING ROUND
  # def player_win(player_m, computer_m)
  #    if player_m == :SCISSORS && computer_m == :PAPER
  #      puts "#{player_m.to_s} cuts #{computer_m.to_s}"
  #    elsif player_m == :PAPER && computer_m == :ROCK
  #     	puts "#{player_m.to_s} covers #{computer_m.to_s}"
  #    elsif player_m == :ROCK && computer_m == :LIZARD
  #     	puts "#{player_m.to_s} crushes #{computer_m.to_s}"
  #    elsif player_m == :LIZARD && computer_m == :SPOCK
  #      	puts "#{player_m.to_s} poisons #{computer_m.to_s}"
  #    elsif player_m == :SPOCK && computer_m == :SCISSORS
  #     	puts "#{player_m.to_s} smashes #{computer_m.to_s}"
  #    elsif player_m == :SCISSORS && computer_m == :LIZARD
  #     	puts "#{player_m.to_s} decapitate #{computer_m.to_s}"
  #    elsif player_m == :LIZARD && computer_m == :PAPER
  #     	puts "#{player_m.to_s} eats #{computer_m.to_s}"
  #    elsif player_m == :PAPER && computer_m == :SPOCK
  #     	puts "#{player_m.to_s} disproves #{computer_m.to_s}"
  #    elsif player_m == :SPOCK && computer_m == :ROCK
  #     	puts "#{player_m.to_s} vaporizes #{computer_m.to_s}"
  #    elsif player_m == :ROCK && computer_m == :SCISSORS
  #      	puts "#{player_m.to_s} crushes #{computer_m.to_s}"
  #    end
  #  end

  #  def computer_win(player_m, computer_m)
  #    if computer_m == :SCISSORS && player_m == :PAPER
  #       puts "#{computer_m.to_s} cuts #{player_m.to_s}"
  #    elsif computer_m == :PAPER && player_m == :ROCK
  #     	puts "#{computer_m.to_s} covers #{player_m.to_s}"
  #    elsif computer_m == :ROCK && player_m == :LIZARD
  #    		puts "#{computer_m.to_s} crushes #{player_m.to_s}"
  #    elsif computer_m == :LIZARD && player_m == :SPOCK
  #     	puts "#{computer_m.to_s} poisons #{player_m.to_s}"
  #    elsif computer_m == :SPOCK && player_m == :SCISSORS
  #    		puts "#{computer_m.to_s} smashes #{player_m.to_s}"
  #    elsif computer_m == :SCISSORS && player_m == :LIZARD
  #    		puts "#{computer_m.to_s} decapitate #{player_m.to_s}"
  #    elsif computer_m == :LIZARD && player_m == :PAPER
  #    		puts "#{computer_m.to_s} eats #{player_m.to_s}"
  #    elsif computer_m == :PAPER && player_m == :SPOCK
  #    		puts "#{computer_m.to_s} disproves #{player_m.to_s}"
  #    elsif computer_m == :SPOCK && player_m == :ROCK
  #    		puts "#{computer_m.to_s} vaporizes #{player_m.to_s}"
  #    elsif computer_m == :ROCK && player_m == :SCISSORS
  #     	puts "#{computer_m.to_s} crushes #{player_m.to_s}"
  #    end
  #  end
end

#tests
#RulesEngine.round_outcome(:paper, :scissors)
#RulesEngine.player_win(:scissors, :paper)
#RulesEngine.computer_win(:paper, :scissors)
