require_relative("lib/king.rb")
require_relative("lib/rook.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/piece.rb")
# require_relative("lib/chess_piece.rb")

black_pawn = Pawn.new(8, 7, "black")
white_pawn = Pawn.new(1, 2, "white")
black_pawn2 = Pawn.new(8, 6, "black")
white_pawn2 = Pawn.new(1, 3, "white")

black_rook_left = Rook.new(1, 8, "black")
black_rook_right = Rook.new(8, 8, "black")

white_rook_left = Rook.new(1, 1, "white")
white_rook_right = Rook.new(8, 1, "white")

black_king = King.new(5, 8, "black")
white_king = King.new(5, 1, "white")

black_bishop_left = Bishop.new(3, 8, "black")
black_bishop_right = Bishop.new(6, 8, "black")

white_bishop_left = Bishop.new(3, 1, "white")
white_bishop_right = Bishop.new(6, 1, "white")

black_knight_left = Knight.new(2, 8, "black")
black_knight_right = Knight.new(7, 8, "black")

white_knight_left = Knight.new(2, 1, "white")
white_knight_right = Knight.new(7, 1, "white")

black_queen = Queen.new(4, 8, "black")
white_queen = Queen.new(4, 1, "white")

# puts "\nTesting the King"
# # Good moves
# # Either one can change by one in either coordinate
# p white_king.move?(6, 2)
# p white_king.move?(5, 2)
# # Bad moves
# p white_king.move?(7, 2)
# p white_king.move?(1, 5)

# puts "\nTesting the Rook"

# p black_rook_right.move?(2, 8)
# p black_rook_left.move?(1, 2)

# p white_rook_right.move?(5, 3)

# puts "\nTesting the Bishop"

# p black_bishop_right.move?(3, 5)
# p black_bishop_left.move?(6, 5)

# p white_bishop_right.move?(6, 2)



# puts "Testing Knight"
# # true
# p black_knight_right.move?(6, 6)
# p black_knight_left.move?(4, 7)
# p white_knight_right.move?(5, 2)
# p white_knight_left.move?(3,3)

# # false
# p black_knight_right.move?(6, 5)
# p black_knight_left.move?(4, 6)
# p white_knight_right.move?(5, 3)
# p white_knight_left.move?(5,2)


# p black_queen.move?(1, 5)
# p white_queen.move?(4, 2)
# # Bad moves
# p black_queen.move?(5, 6)
# p white_queen.move?(5, 4)
puts "testing true"
p black_pawn.move?(8, 6)
p white_pawn.move?(1, 4)

p black_pawn2.move?(8, 5)
p white_pawn2.move?(1, 4)

puts "testing False"
p black_pawn.move?(7, 6)
p white_pawn.move?(1, 6)

p black_pawn2.move?(8, 4)
p white_pawn2.move?(1, 5)
