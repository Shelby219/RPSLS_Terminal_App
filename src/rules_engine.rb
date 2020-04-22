require_relative 'weapons.rb'


module RulesEngine
	module_function
	include Weapons
	# def who_won(move1, move2)
	# 	# Returns either :first, :second or :draw
	# 	if move1 == move2 
	# 		:draw
	# 	elsif  move1 == :scissors and move2 == :paper 
	# 		:first
	# 	end
	# end

	def round_draw(player_move, computer_move)
		if player_move == computer_move
			:draw
		end
	end

	def player_win(player_move, computer_move)
		if player_move == :scissors and computer_move == :paper 
			:first 
		#puts "#{player_move} cuts #{computer_move}"
		elsif player_move == :paper and computer_move == :rock 
			:first	
		# 	puts "#{player_move} covers #{computer_move}"
		elsif player_move == :rock and computer_move == :lizard 
			:first	
		# 	puts "#{player_move} crushes #{computer_move}"
		elsif player_move == :lizard and computer_move == :spock 
			:first	
			# 	puts "#{player_move} poisons #{computer_move}"
		elsif player_move == :spock and computer_move == :scissors 
			:first	
		# 	puts "#{player_move} smashes #{computer_move}"
		elsif player_move == :scissors and computer_move == :lizard 
			:first	
		# 	puts "#{player_move} decapitate #{computer_move}"
		elsif player_move == :lizard and computer_move == :paper 
			:first	
		# 	puts "#{player_move} eats #{computer_move}"
		elsif player_move == :paper and computer_move == :spock 
			:first	
		# 	puts "#{player_move} disproves #{computer_move}"
		elsif player_move == :spock and computer_move == :rock 
			:first	
		# 	puts "#{player_move} vaporizes #{computer_move}"
		elsif player_move == :rock and computer_move == :scissors 
			:first	
		# 	puts "#{player_move} crushes #{computer_move}"
		end
	end

	def computer_win(computer_move, player_move)
		if computer_move == :scissors and player_move == :paper 
			:first	
		#   puts "#{computer_move} cuts #{player_move}"
		elsif computer_move == :paper and player_move == :rock 
			:first	
	# 		puts "#{computer_move} covers #{player_move}"
		elsif computer_move == :rock and player_move == :lizard  
			:first	
	# 		puts "#{computer_move} crushes #{player_move}"
		elsif computer_move == :lizard and player_move == :spock 
			:first	
	# 		puts "#{computer_move} poisons #{player_move}"
		elsif computer_move == :spock and computer_move == :scissors 
			:first	
	# 		puts "#{computer_move} smashes #{player_move}"
		elsif computer_move == :scissors and player_move == :lizard 
			:first	
	# 		puts "#{computer_move} decapitate #{player_move}"
		elsif computer_move == :lizard and player_move == :paper 
			:first	
	# 		puts "#{computer_move} eats #{player_move}"
		elsif computer_move == :paper and player_move == :spock 
			:first	
	# 		puts "#{computer_move} disproves #{player_move}"
		elsif computer_move== :spock and player_move == :rock 
			:first	
	# 		puts "#{computer_move} vaporizes #{player_move}"
		elsif computer_move == :rock and player_move == :scissors 
			:first	
	# 		puts "#{computer_move} crushes #{player_move}"
		end	
	end


	def round_draw1(player_move, computer_move)
		if Weapons::COMPUTER_CHOICES[5]  ==  Weapons::COMPUTER_CHOICES[5] 
			:draw
		end
	end

end
	 


RulesEngine.player_win(:scissors, :paper)




