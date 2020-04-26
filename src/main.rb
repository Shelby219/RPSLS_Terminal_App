require 'tty-cursor'
require 'tty-screen'
require 'tty-spinner'
require 'io/console'
require 'tty-prompt'

require_relative 'intro.rb'
require_relative 'game_round.rb'




def ask_again
  begin
    puts "Would you like to play again? (yes) or (no)?"
    again = gets.strip.to_s
   raise if again == yes.to_s or no.to_s #/working???
   rescue StandardError => e
     puts "Invalid entry, please type (yes) or (no)".colorize(:yellow)
    ask_again
  end
end

def end_game
  puts "Thank you for playing ROCK PAPER SCISSORS SPOCK LIZARD THE TERMINAL GAME"
end
  

def rpssl_main
  play_again = true
  while play_again 
    #method from intro.rb #INTRO
    instructions

    #calling main method and new game from game_round.rb
    Player.main_player
    newgame = GameRound.new.play.winner_declare

    ask_again
    if again == "no" 
      end_game
      break play_again == !true
    else again == "yes" 
   end
 end
end

#rpssl_main


#test
ask_again


