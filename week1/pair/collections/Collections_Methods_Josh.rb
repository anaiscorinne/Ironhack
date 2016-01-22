class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Javi's place", "Madrid", 5, 42),
  Home.new("Anais's place", "Miami", 8, 82),
  Home.new("Josh's place", "Pittsburgh", 3, 65),
  Home.new("Nizar's place", "San Juan", 2, 23),
  Home.new("Alia's place", "Brooklyn", 4, 49),
  Home.new("Bianca's place", "Miami", 3, 54),
  Home.new("Karen's place", "San Juan", 5, 47),
  Home.new("Julian's place", "Pittsburgh", 5, 62),
  Home.new("Jojo's place", "Mallorca", 2, 78),
  Home.new("Christian's place", "Punta Cana", 10, 40)
]

def array_printer(array_of_homes)
  array_of_homes.each do | home |
    puts "#{home.name} in  #{home.city}"
    puts "CAP: #{home.capacity} | $#{home.price}"
    puts "-------------"
  end
end

puts "How do you want to sort your homes? HTL (Highest to Lowest Price), LTH (Lowest to Highest Price), CAP (Capacity)?"
puts ">"
user_input = gets.chomp

#default should be sorted by price, lowest to highest.
#then different attributes that you choose will let you sort a different way

if user_input.upcase == "HTL"
  highest_to_lowest = homes.sort { | home_a, home_b | home_b.price <=> home_a.price }
  array_printer(highest_to_lowest)
elsif user_input.upcase == "LTH"
  lowest_to_highest = homes.sort { | home_a, home_b | home_a.price <=> home_b.price }
  array_printer(lowest_to_highest)
elsif user_input.upcase == "CAP"
  highest_to_lowest = homes.sort { | home_a, home_b | home_b.capacity <=> home_a.capacity }
  array_printer(highest_to_lowest)
else puts "Please select one of the options: HTL, LTH, CAP!"
  puts ">"
  

end





    

