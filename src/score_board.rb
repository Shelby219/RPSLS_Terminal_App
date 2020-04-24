require_relative 'weapons.rb'


class ScoreBoard
    attr_accessor :player_score, :computer_score
	
	def initialize (player_score = 0, computer_score = 0)
        @player_score = player_score
        @computer_score = computer_score
	end


    def add_score_player(points)
        @player_score += points 
    end

    def add_score_computer(points)
        @computer_score += points
    end
    
    def show_score_player
        @player_score
    end

    def show_score_computer
        @computer_score
    end

end






# #tests
# scoreboard1 = ScoreBoard.new
# scoreboard1.add_score_player(1) #1
# p scoreboard1.add_score_player(1) #2
# p scoreboard1.add_score_computer(1) #1
# #p Scoreboard.show_score #2

# p scoreboard1.show_score_player