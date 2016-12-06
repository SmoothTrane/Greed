class Game


	require_relative "client.rb"
	@grid = Grid.new
	def new 
		puts 'Hello, how are you? Let\'s play Grid!'
		play
	end






	def play
		userInput = nil
		until userInput === "q"
			userInput = nil
			until userInput === "n" || userInput === "e" || userInput === "s" || userInput === "w"
				puts "Select if you want to go North South East or West"
				userInput = gets.strip.downcase[0]
			end

			case userInput
			when "n"
				@grid.move("n")
			when "e"
				@grid.move("e")
			when "s"
				grid.move("s")
			when "w"
				grid.move("w")
			end
		end
	end



end