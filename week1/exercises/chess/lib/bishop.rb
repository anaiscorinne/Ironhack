class Bishop < Piece

	def move?(dest_x, dest_y)
		dx = (dest_x - @pos_x).abs
		dy = (dest_y - @pos_y).abs

		if dy == dx
			true
		else
			false			
		end
	end
end