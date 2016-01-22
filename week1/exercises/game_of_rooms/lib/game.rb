#start game method
#change room method
#add room method
#container for rooms : an array of rooms
#play method
#where i am method

class Game
	def initialize
		@rooms = []
		@current_room = 0
	end

	def add_room(single_room)
		@rooms.push(single_room)
	end

	def play
		user_input = ""

		while user_input.upcase != @rooms[@current_room].exit #while is like a for loop w/o def end
			@rooms[@current_room].display_description
			user_input = gets.chomp
		end

		@current_room += 1 #now you go to the next room
		if @current_room != @rooms.length
			play #this is recursion
			#we are calling the sme method from within the method
		elsif
			puts "You have won the game!"
		end
		
	end

end