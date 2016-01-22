class Pawn < Piece
	# def initialize(pos_x, pos_y, color, has_moved)
	# 	@pos_y = pos_y
	# 	@pos_x = pos_x
	# 	@color = color
	# 	@has_moved = has_moved
	# end

	def move?(dest_x, dest_y)
		dx = (dest_x - @pos_x)
		dy = (dest_y - @pos_y)
	
	if @color == "black"
		if (@pos_y == 7)  && (dx == 0) && ((dy == -2) || (dy == -1))
			true
		elsif (dx == 0) && (dy == -1)
			true
		else
			false			
		end
	elsif @color == "white"
		if (@pos_y == 2)  && (dx == 0) && ((dy == 2) || (dy == 1))
			true
		elsif (dx == 0) && (dy == 1)
			true
		else
			false			
		end
	end
	end

# 		if dx == 0 && 
# 			((@color == "white" && dy > 0) ||
# 			(@color == "black" && dy < 0)) &&
# 			(dy.abs == 1 || @has_moved && dy.abs == 2)
# 			true
# 		else
# 			false
# 		end
# 	end
# end