require 'tty-cursor'
require 'tty-screen'
require 'tty-spinner'
require 'io/console'
require 'tty-prompt'


require_relative 'weapons.rb'
require_relative 'rules_engine.rb'
require_relative 'computer_player.rb'
#require_relative 'score_board.rb'

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
            puts "Invalid name length, must be 10 characters or less\n\n"
            main_player
         end
    end
      
    def player_choice
     loop do
       puts "Choose your weapon: Rock (r), Paper (p), Scissors (s), Spock (sp), Lizard (l)\n\n"
       answer = gets.chomp.downcase
       #checking for valid answer
       if Weapons::ENTRY.key?(answer)
         return Weapons::ENTRY[answer]
       end
       #exception handling for invalid entry
    raise if answer != Weapons::PLAYER_ENTRIES
    rescue  StandardError => e
        puts "That entry is invalid. Please re-nter!\n\n"
      end
    end  

    def final_winner(play, com)
      return :PWIN if @player_score == @winning_score
      return :CWIN if @computer_score == @winning_score
    end


    
end

class GameRound
    #include ScoreBoard
    include Player
    include RulesEngine
    include Weapons
    attr_accessor :player_score, :computer_score, :name
	
	def initialize #intialize the variables
        @player_score = 0
        @computer_score = 0
        @winning_score = 5
        #@@name = name
    end

    # def get_name
    #   main_player
    # end

    def get_score #This is not working at the moment as well- the scores are not updating
        puts "SCORE: Player - #{@player_score.to_i} Computer - #{@computer_score.to_i}\n\n"
    end 
      
    def play
      while @player_score <  @winning_score && @computer_score <  @winning_score
        player = player_choice
        computer = ComputerPlayer.new.move_shuffle #choose a random option for computer
         puts "#{@@name} chooses #{player.to_s.downcase}.\n\n"
         puts "Computer chooses #{computer.to_s.downcase}.\n\n"
        case RulesEngine.round_outcome(player, computer)
        when :DRAW 
          puts "Tie, play again!\n\n"
          play
        when :PLAYERWIN 
          @player_score += 1
          puts "#{player.to_s.capitalize} beats #{computer.to_s.downcase}, #{@@name} wins the round.\n\n" 
          #return RulesEngine::player_win(player, computer) #This is not passing this method at the moment
          get_score
        when :COMPUTERWIN 
          @computer_score += 1
          puts "#{computer.to_s.capitalize} beats #{player.to_s.downcase}, computer wins the round.\n\n" 
          #return RulesEngine::computer_win(computer, player)
          get_score
         end
         if @player_score == @winning_score 
            puts "#{@@name} is the ULTIMATE RPSSL CHAMPION!"
            break
         elsif @computer_score == @winning_score 
            puts "Too bad, the computer remains the ULTIMATE RPSSL CHAMPION!"
            break
         else
            puts "NEXT ROUND!\n\n"
            puts "Press any any key to continue!\n\n"
            STDIN.getch  #Waits for user input (Any Key)
             puts `clear` # Clears screen after
         end
     end
    end

  
end

#test
Player.main_player
newgame = GameRound.new.play




