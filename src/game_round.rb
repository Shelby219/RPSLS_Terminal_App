require_relative 'weapons.rb'
require_relative 'rules_engine.rb'
require_relative 'computer_player.rb'
#require_relative 'score_board.rb'

#this module is a section for the player methods to be held
module Player 
    include RulesEngine
    def player_choice
     loop do
       puts "Choose your weapon: Rock (r), Paper (p), Scissors (s), Spock (sp), Lizard (l)"
       answer = gets.chomp.downcase
       #checking for valid answer
       if Weapons::ENTRY.key?(answer)
         return Weapons::ENTRY[answer]
       end
       #exception handling for invalid entry
    raise if answer != Weapons::PLAYER_ENTRIES
    rescue  StandardError => e
        puts "That entry is invalid. Please re-nter!"
      end
    end  
    
end

class GameRound
    #include ScoreBoard
    include Player
    include RulesEngine
    attr_accessor :player_score, :computer_score
	
	def initialize (player_score = 0, computer_score = 0)
        @player_score = player_score
        @computer_score = computer_score
        @winning_score = 5
    end
      
    def play
      #while @player_score <  @winning_score && @computer_score <  @winning_score
        player = player_choice
        computer = ComputerPlayer.new.move_shuffle #choose a random option for computer
         puts "Player chooses #{player.to_s.downcase}."
         puts "Computer chooses #{computer.to_s.downcase}."
        # RulesEngine.round_outcome(player, computer)
        # if :DRAW
        #     puts "Tie, play again!"
        #    # play
        # elsif :PLAYERWIN
        #     RulesEngine.player_win(player, computer) 
        #     @player_score += 1
        # elsif :COMPUTERWIN
        #     return RulesEngine.computer_win(computer, player)
        #     @computer_score += 1
        # else
        #     puts "METHOD ERROR"
        # end
      case RulesEngine.round_outcome(player, computer)
      when :DRAW 
        puts "Tie, play again!"
        play
      when :PLAYERWIN 
        puts "#{player.to_s.capitalize} beats #{computer.to_s.downcase}, player wins the round." 
        #return RulesEngine.player_win(player, computer) #This is not passing this method at the moment
        @player_score += 1
      when :COMPUTERWIN 
        puts "#{computer.to_s.capitalize} beats #{player.to_s.downcase}, computer wins the round." 
        #return RulesEngine.computer_win(computer, player)
        @computer_score += 1
      end
     #end
    end

     def self.get_score #This is not working at the moment as well
        player_show = @player_score.to_s
        computer_show = @computer_score.to_s
        puts "SCORE: Player - #{player_show} Computer - #{computer_show}"
        self
     end
    

end

newgame = GameRound.new.play

newgame.get_score



