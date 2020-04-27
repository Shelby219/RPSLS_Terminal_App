require 'io/console'
#require 'tty-prompt'
require 'colorize'


require_relative 'weapons.rb'
require_relative 'rules_engine.rb'
require_relative 'computer_player.rb'



#this module is a section for the player methods to be held
module Player 
    module_function #CURSED BE THIS CODE STATEMENT
    #include RulesEngine
    attr_accessor :name

    def main_player
        begin
         puts "What is your player name?\n\n"
         @@name = gets.strip.to_s #this is still not updating the instance variable.
         raise if @@name.length > 10
         rescue StandardError => e
            puts "Invalid name length, must be 10 characters or less\n\n".colorize(:yellow)
            main_player
         end
         puts "Welcome player #{@@name}! Lets BEGIN!\n\n"
    end
      
    def player_choice
     loop do
       puts "CHOOSE YOUR WEAPON: Rock (r), Paper (p), Scissors (s), Spock (sp), Lizard (l)\n\n"
       answer = gets.chomp.downcase
       #checking for valid answer
       if Weapons::ENTRY.key?(answer)
         return Weapons::ENTRY[answer]
       end
       #exception handling for invalid entry
    raise if answer != Weapons::PLAYER_ENTRIES
    rescue  StandardError => e
        puts "That entry is invalid. Please re-nter!\n\n".colorize(:yellow)
     end
    end  
end

class GameRound
    #include ScoreBoard
    include Player
    include RulesEngine
    include Weapons
    attr_accessor :player_score, :computer_score, :name
    @@name = ''
	def initialize #intialize the variables
        @player_score = 0
        @computer_score = 0
        @winning_score = 5
    
  end

    def get_score 
      puts "SCORE: Player - #{@player_score.to_i} Computer - #{@computer_score.to_i}\n\n"
    end 
  

    def play
      while @player_score !=  @winning_score && @computer_score !=  @winning_score
        player = player_choice
        computer = ComputerPlayer.new.move_shuffle #choose a random option for computer
         puts "#{@@name.capitalize} chooses #{player.to_s.downcase}.\n\n".colorize(:green)
         puts "COMPUTER chooses #{computer.to_s.downcase}.\n\n".colorize(:red)
        case RulesEngine.round_outcome(player, computer)
        when :DRAW 
          puts "Tie, play again!\n\n"
          puts "Press any any key to continue!\n\n".colorize(:magenta)
            STDIN.getch  #Waits for user input (Any Key)
          puts `clear` # Clears screen after
          play
        when :PLAYERWIN 
          @player_score += 1
          puts "#{player.to_s.capitalize} BEATS #{computer.to_s.downcase}, #{@@name} WINS THE ROUND.\n\n".colorize(:green)
          #return RulesEngine.player_win(player, computer) #This is not passing this method at the moment
          sleep 1
          get_score
        when :COMPUTERWIN 
          @computer_score += 1
          puts "#{computer.to_s.capitalize} BEATS #{player.to_s.downcase}, COMPUTER WINS THE ROUND.\n\n".colorize(:red)
          #return RulesEngine.computer_win(computer, player)
          sleep 1
          get_score
         end
      
        break if @player_score ==  @winning_score || @computer_score ==  @winning_score
            puts "NEXT ROUND!\n\n"
            puts "Press any any key to continue!\n\n".colorize(:magenta)
            STDIN.getch  #Waits for user input (Any Key)
            puts `clear` # Clears screen after
      end
      self #winner_declare
    end

    def winner_declare
      if @player_score == @winning_score
        sleep 1
        puts "CONGRATULATIONS! #{@@name} is the ULTIMATE RPSSL CHAMPION!\n\n".colorize(:green)
      else @computer_score == @winning_score
        sleep 1
        puts "Too bad, the computer remains the ULTIMATE RPSSL CHAMPION!\n\n".colorize(:red) #doubles up at the moment
      end
      self
    end

end

#test
#Player.main_player
#newgame = GameRound.new.play.winner_declare
##p Player::player_choice.inspect

