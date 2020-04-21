module RulesEngine
	module_function
	
	def who_won(move1, move2)
		# Returns either :first, :second or :draw
		if move1 == move2 
			:draw
		elsif move1 == :paper and move2 == :scissors
			:second
		end
	end
	
	
end