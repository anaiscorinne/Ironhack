class Board
	def initialize
		@board_placement = {
			
			# BLACK
			"1,8" => Rook.new(1, 8, "black"),
			"2,8" => Knight.new(2, 8, "black"),
			"3,8" => Bishop.new(3, 8, "black"),
			"4,8" => Queen.new(4, 8, "black"),
			"5,8" => King.new(5, 8, "black"),
			"6,8" => Bishop.new(6, 8, "black"),
			"7,8" => Knight.new(7, 8, "black"),
			"8,8" => Rook.new(8, 8, "black"),
			
			# BLACK / PAWNS
			"1,7" => Pawn.new(1, 7, "black"),
			"2,7" => Pawn.new(2, 7, "black"),
			"3,7" => Pawn.new(3, 7, "black"),
			"4,7" => Pawn.new(4, 7, "black"),
			"5,7" => Pawn.new(5, 7, "black"),
			"6,7" => Pawn.new(6, 7, "black"),
			"7,7" => Pawn.new(7, 7, "black"),
			"8,7" => Pawn.new(8, 7, "black"),
			
			# WHITE / PAWNS
			"1,2" => Pawn.new(1, 2, "white"),
			"2,2" => Pawn.new(2, 2, "white"),
			"3,2" => Pawn.new(3, 2, "white"),
			"4,2" => Pawn.new(4, 2, "white"),
			"5,2" => Pawn.new(5, 2, "white"),
			"6,2" => Pawn.new(6, 2, "white"),
			"7,2" => Pawn.new(7, 2, "white"),
			"8,2" => Pawn.new(8, 2, "white"),			

			"1,1" => Rook.new(1, 1, "white"),
			"2,1" => Knight.new(2, 1, "white"),
			"3,1" => Bishop.new(3, 1, "white"),
			"4,1" => Queen.new(4, 1, "white"),
			"5,1" => King.new(5, 1, "white"),
			"6,1" => Bishop.new(6, 1, "white"),
			"7,1" => Knight.new(7, 1, "white"),
			"8,1" => Rook.new(8, 1, "white")
			
		}
	end

	def accept

		puts "What is your current position?"
		print ">"
		@current_position = gets.chomp
		position_reader(@current_position)
		puts "Where would you like to move?"
		print ">"
		@destination = gets.chomp
		position_reader(@destination)
	end

	def position_reader(letter_position)
		letter = letter_position[0]
		number = letter_position[1]
		dictionary = {
			"a" => 1,
			"b" => 2,
			"c" => 3,
			"d" => 4,
			"e" => 5,
			"f" => 6,
			"g" => 7,
			"h" => 8
		}
	dictionary.each do |key, value|
		if letter == key
			letter = value
		# else
			# puts "That position does not exist! Please start over!"
			# accept
		end

	end	
	puts @current_position = "#{letter}, #{number}"
end

end