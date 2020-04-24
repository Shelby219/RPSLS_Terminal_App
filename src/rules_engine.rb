# frozen_string_literal: true

require_relative 'weapons.rb'

module RulesEngine
  module_function
  include Weapons

  def round_outcome(plays)
   # plays = [computer_choice, player_choice]
    return :PLAYERWIN if Weapons::PLAYER_WIN.include?(plays)
    return :COMPUTERWIN if Weapons::COMPUTER_WIN.include?(plays)
    return :DRAW if player == computer
  end

  def player_win(player_m, computer_m)
     if player_m == :scissors && computer_m == :paper
       puts "#{player_m} cuts #{computer_m}"
     elsif player_m == :paper && computer_m == :rock
      	puts "#{player_m} covers #{computer_m}"
     elsif player_m == :rock && computer_m == :lizard
      	puts "#{player_m} crushes #{computer_m}"
     elsif player_m == :lizard && computer_m == :spock
       	puts "#{player_m} poisons #{computer_m}"
     elsif player_m == :spock && computer_m == :scissors
      	puts "#{player_m} smashes #{computer_m}"
     elsif player_m == :scissors && computer_m == :lizard
      	puts "#{player_m} decapitate #{computer_m}"
     elsif player_m == :lizard && computer_m == :paper
      	puts "#{player_m} eats #{computer_m}"
     elsif player_m == :paper && computer_m == :spock
      	puts "#{player_m} disproves #{computer_m}"
     elsif player_m == :spock && computer_m == :rock
      	puts "#{player_m} vaporizes #{computer_m}"
     elsif player_m == :rockc && computer_m == :scissors
       	puts "#{player_m} crushes #{computer_m}"
     end
   end

   def computer_win(computer_m, player_m)
     if computer_m == :scissors && player_m == :paper
        puts "#{computer_m} cuts #{player_m}"
     elsif computer_m == :paper && player_m == :rock
      	puts "#{computer_m} covers #{player_m}"
     elsif computer_m == :rock && player_m == :lizard
     		puts "#{computer_m} crushes #{player_m}"
     elsif computer_m == :lizard && player_m == :spock
      	puts "#{computer_m} poisons #{player_m}"
     elsif computer_m == :spock && player_m == :scissors
     		puts "#{computer_m} smashes #{player_m}"
     elsif computer_m == :scissors && player_m == :lizard
     		puts "#{computer_m} decapitate #{player_m}"
     elsif computer_m == :lizard && player_m == :paper
     		puts "#{computer_m} eats #{player_m}"
     elsif computer_m == :paper && player_m == :spock
     		puts "#{computer_m} disproves #{player_m}"
     elsif computer_m == :spock && player_m == :rock
     		puts "#{computer_m} vaporizes #{player_m}"
     elsif computer_m == :rock && player_m == :scissors
      	puts "#{computer_m} crushes #{player}"
     end
   end
end

p RulesEngine.round_outcome(:scissors, :paper)
RulesEngine.player_win(:scissors, :paper)
RulesEngine.computer_win(:scissors, :paper)
