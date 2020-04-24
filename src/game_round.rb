require_relative 'weapons.rb'
require_relative 'rules_engine.rb'
require_relative 'computer_player.rb'
#require_relative 'score_board.rb'

#this module is a section for the player methods to be held
module Player 
    def player_choice
     loop do
       puts "Choose your weapon: Rock (r), Paper (p), Scissors (s), Spock (sp), Lizard (l)"
       answer = gets.chomp.downcase
       if Weapons::ENTRY.key?(answer)
         return Weapons::ENTRY[answer]
       elsif answer != Weapons::PLAYER_ENTRIES
         puts "That entry is invalid. Please re-nter!"
       else
         nil
        end
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
      case RulesEngine.round_outcome(player, computer)
      when :DRAW
        puts "Tie, play again!"
        play
      when :PLAYERWIN
        RulesEngine.player_win(player, computer)
        @player_score += 1
      when :COMPUTERWIN
        RulesEngine.computer_win(computer, player)
        @computer_score += 1
      end
      #end
    end

end

newgame = GameRound.new.play



