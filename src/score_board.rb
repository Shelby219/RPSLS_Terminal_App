require_relative 'weapons.rb'



module ScoreBoard
    
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