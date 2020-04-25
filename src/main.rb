require 'tty-cursor'
require 'tty-screen'
require 'tty-spinner'
require 'io/console'
require 'tty-prompt'

require_relative 'intro.rb'
require_relative 'game_round.rb'


#INTRO

def rpssl_main

  play_again = true

  while play_again 
#method from intro.rb
    instructions

#calling main method and new game from game_round.rb
    Player.main_player
    newgame = GameRound.new.play

  puts "Would you like to play again? (yes) or (no)?"
  again = gets.chomp

  if again == "no" 
   break play_again == !true
  else again == "yes" 
  end
 end

end

def end_game
puts "Thank you for playing ROCK PAPER SCISSORS SPOCK LIZARD THE TERMINAL GAME"
end

rpssl_main

end_game






# @prompt = TTY:Prompt.new

# main_menu
# menu_choice = @prompt.select("Main Menu") do |menu_choice|
#   menu.enum "."
#   menu.choice "View Rules", 1
#   menu.choice "View High Scores", 2
#   menu.choice "Start New Game", 3
#   menu.choice "Exit", 4
# end
# return menu_choice
# end