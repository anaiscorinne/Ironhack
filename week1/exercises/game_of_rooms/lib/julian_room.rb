class Game
	attr_accessor :rooms, :current_pos
	def initialize
		@health = 100
		@rooms = [] #Sets the array of rooms to nil as of now
		@current_pos = 0 #This is used to determine which room you're in
	end
	

	def add_room(new_room)
		@rooms.push(new_room) #The method to push the rooms into the array above
	end





	def finish
		if @current_pos == @rooms.length - 1
			true
		else
			false
		end
	end

	def health
		if @health == 0
			true
		else
			false
		end
	end





	def start(direction) # This is complicated. This is what is going to determine if you go through the right exit
			current_room = @rooms[@current_pos]
		if current_room.exit == direction
			@current_pos += 1
 			new_room = @rooms[@current_pos]
			puts new_room.description
		elsif current_room.back == direction
			@current_pos -= 1
			new_room = @rooms[@current_pos]
			puts new_room.description
		else
			puts "You hit a wall, try again."
			@health -= 25
			puts "Your health is now at #{@health}%"
		end
		if @health == 0
			puts "You are dead... Game Over."
		end
	end
end







class Room
	attr_accessor :description, :exit, :back #This class is simply so you can create the actual rooms and manually put them into the @rooms array
	def initialize(description, exit, back) #The 2 different details about them (exit == answer)
		@description = description #Making them accessible
		@exit = exit #Same as 44
		@back = back
	end
end






room_adder = Game.new #This is so in a way I can use the Game class


room = Room.new("There is a light to the north","N", "N") #These are the actual room objects I'm creating with different perameters
room2 = Room.new("There is a light to the east", "E", "S")
room3 = Room.new("There is a light to the south", "S", "W")
room4 = Room.new("There is a light to the east", "E", "N")
room5 = Room.new("You did it, good job m8!", "N", "W")


room_adder.add_room(room) #room_adder is = Game.New so I am using the method .add_room which will push the Room.new Object into the array in class Game.
room_adder.add_room(room2)
room_adder.add_room(room3)
room_adder.add_room(room4)
room_adder.add_room(room5)

		input = ""

		puts "There's a light to the North."

while input != "EXIT" && room_adder.finish == false && room_adder.health == false
	input = gets.chomp.upcase
	room_adder.start(input)
end
 #room_adder again so I'm using Game class and using the method start which handles how the game is played (reference line 17)