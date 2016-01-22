require_relative("lib/king.rb")
require_relative("lib/rook.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")

board = Board.new
puts board

board.accept
board.position_reader

# We need to accepts moves(current_position, destination)
# Change the a2...h8 to 1,8..8,8
# Those moves need to turn into the hash-appropriate spot
# Then the moves need to be checked in the chess piece class
# Then we need to see if