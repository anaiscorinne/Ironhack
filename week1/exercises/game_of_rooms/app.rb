require_relative('lib/room.rb') 
require_relative('lib/game.rb')

room = Room.new("You are inside a dungeon cell, there is a door to the North.", "N")
room1 = Room.new("There is a set of stairs to the East", "E")
room2 = Room.new("You have arrived at the landing, there is a sleeping guard and door to the North", "N")
room3 = Room.new("There is a trap door to the West", "W")
room4 = Room.new("There is a gate to the South", "S")

my_game = Game.new

my_game.add_room(room)
my_game.add_room(room1)
my_game.add_room(room2)
my_game.add_room(room3)
my_game.add_room(room4)

my_game.play