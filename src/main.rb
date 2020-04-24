require 'tty-cursor'
require 'tty-screen'
require 'tty-spinner'
require 'io/console'
require 'tty-prompt'


module RPSSL

#new player
class Player < ComputerPlayer
  include Weapons

    attr_accessor :name 

    def initialize
          @name = ' '
    end

        
    def main_player
     begin
      puts "What is your player name?"
      @name = STDIN.gets.strip
      raise if @name.to_s == 
      rescue StandardError => e
         puts "Invalid name choice, please use letter characters only"
         main_player
      end
      unless ARGV.empty?
    end
    

    def game_rounds


    end
end

end




@prompt = TTY:Prompt.new

main_menu
menu_choice = @prompt.select("Main Menu") do |menu_choice|
  menu.enum "."
  menu.choice "View Rules", 1
  menu.choice "View High Scores", 2
  menu.choice "Start New Game", 3
  menu.choice "Exit", 4
end
return menu_choice
end