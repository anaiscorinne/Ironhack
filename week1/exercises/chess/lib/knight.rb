class Knight < Piece
	
	def move?(dest_x, dest_y)
		dx = (dest_x - @pos_x).abs
		dy = (dest_y - @pos_y).abs

		if 	(dx == 2 && dy == 1) || 
			(dx == 1 && dy == 2)
			true
		else
			false			
		end
	end
end