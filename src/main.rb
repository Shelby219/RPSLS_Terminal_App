require 'tty-cursor'
require 'tty-screen'
require 'tty-spinner'
require 'io/console' #Allows the game to be started by pressing any key.
require 'tty-prompt'

require_relative 'intro.rb'
require_relative 'game_round.rb'

module FullGame
  module_function
  #MAIN GAME METHOD  
  def rpssl_main
      #method from intro.rb #INTRO
      if_argv
      Welcome::spinner
      Welcome::continue
      Welcome::instructions

      #calling main method and new game from game_round.rb
      Player.main_player
      newgame = GameRound.new.play.winner_declare

      #calling ask again method 
      ask_again
  end

  #END GAME METHOD
  def end_game
    puts "Thank you for playing ROCK PAPER SCISSORS SPOCK LIZARD THE TERMINAL GAME".colorize(:magenta)
  end

  #RESTART GAME METHOD
  def ask_again
    puts "Would you like to play again? (y) or (n)?"
    again = gets.chomp
    puts `clear` # Clears screen after
    #exception handling for invalid entry
    case again
    when "y"
      rpssl_main #this will restart the game
    when "n"
      end_game #this will end the game
      #play_again == !true
    else
      puts"Invalid entry, please type (y) or (n)".colorize(:yellow)
      ask_again
    end 
  end

end


FullGame::rpssl_main
#test
#ask_again


