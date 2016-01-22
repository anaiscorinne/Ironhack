# class Home
#   attr_reader(:name, :city, :capacity, :price)

#   def initialize(name, city, capacity, price)
#     @name = name
#     @city = city
#     @capacity = capacity
#     @price = price
#   end
# end

# homes = [
#   Home.new("Nizar's place", "San Juan", 2, 42),
#   Home.new("Fernando's place", "Seville", 5, 47),
#   Home.new("Josh's place", "Pittsburgh", 3, 41),
#   Home.new("Gonzalo's place", "Málaga", 2, 45),
#   Home.new("Ariel's place", "San Juan", 4, 49)
# ]

# puts homes[0].name
# puts homes[1].name
# puts homes[2].name
# puts homes[3].name
# puts homes[4].name

# homes.each do |hm|
#   puts hm.name
# end

# puts "________________________"


#   def array_printer(array)
#   array.each do | hm |
#     puts "Name: #{hm.name} |  City: #{hm.city} |  Capacity: #{hm.capacity} | Price: #{hm.price}"
#   end
# end

# homes.each { |hm|
#   puts "#{hm.name} in #{hm.city}"
#   puts "Price: $#{hm.price} a night" #hm.name
# }

# cities = homes.map do |hm|
#   hm.city
# end

# puts cities

# home_prices = homes.map do |hm|
# 	hm.price
# end

# puts home_prices

# puts "________"

# average_price = homes.reduce(0) {
# 	|sum, hm| sum + hm.price
# }
# puts average_price/homes.length

# total_capacities = homes.reduce(0.0) do |sum, hm|
#   sum + hm.capacity
# end

# puts "The average capacity is:"
# puts total_capacities / homes.length

# homes.each_with_index do |hm, index|
#   puts "Home Number #{index + 1}: #{hm.name}"
# end

# Homes in San Juan
# san_juan_homes = homes.select do |hm|
#   # Keep hm only if its city is "San Juan"
#   hm.city == "San Juan"
# end

# array_printer(san_juan_homes)

# puts "-----------"

# # Homes with capacity 4 or more
# high_capacity_homes = homes.select do |hm|
#   # Keep hm only if its capacity is 4 or greater
#   hm.capacity >= 4
# end

# array_printer(high_capacity_homes)

# home_41_dollars = homes.find do |hm|
#   # Is hm's price $41?
#   hm.price == 41
# end

# puts "The first home that costs $41 is:"
# puts home_41_dollars.name

# sorted = homes.sort do |home1, home2|
#   # Compare the two homes by their capacity
#   home1.capacity <=> home2.capacity
# end

# array_printer(sorted)

# puts "-------------"

# sorted2 = homes.sort do |home1, home2|
#   # Compare the two homes by their name
#   home1.name <=> home2.name
# end

# array_printer(sorted2)

# hellos = {
#   :english => "Hello",
#   :spanish => "Hola",
#   :french => "Bonjour"
# }

# hellos.each do |language, word|
#   puts "The word for Hello in #{language} is: #{word}."
# end


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

def array_printer(array)
	array.each do | hm |
		puts "Name: #{hm.name} |  City: #{hm.city} |  Capacity: #{hm.capacity} | Price: #{hm.price}"
	end
end

def avg_price(homes_array)
	avg = homes_array.reduce(0) {
	|sum, hm| 
	sum + hm.price
}
avg /= homes_array.length
puts "The average price of homes is $#{avg}"
end

puts "Welcome to TextBnB"
puts "How would you like to sort the homes (name, city, capacity, price)?"

input = gets.chomp

if input.downcase == "name" 
	sorted_name = homes.sort {| x, y | x.name<=>y.name} 
	array_printer(sorted_name)
	puts " "
	avg_price(sorted_name)

elsif input.downcase == "city"
	puts "Please select a city:"
	homes.each do | hm |
		puts hm.city
	end
	city = gets.chomp

	sorted_city = homes.select do |hm|
		hm.city == city.capitalize
	end
	array_printer(sorted_city)
	puts " "
	avg_price(sorted_city)

elsif input.downcase == "capacity"
	sorted_capacity = homes.sort {| x, y| y.capacity<=>x.capacity}
	array_printer(sorted_capacity)
	puts " "
	avg_price(sorted_capacity)

elsif input.downcase == "price"
	sorted_price = homes.sort {| x, y| y.price<=>x.price}
	array_printer(sorted_price)
	puts " "
	avg_price(sorted_price)

else puts "Please select a valid option!"

	puts "name, city, capacity, price"
	input = gets.chomp

end

puts "Name your price!"
price_input = gets.chomp.to_i

if price_input.nil?
	puts "Please choose a price and we will choose the places!"
	price_input = gets.chomp
# price_sort = homes.select do |hm|
else 
	 new_array=homes.select { |hm| hm.price <= price_input}
	 new_array.each do |hm|
	 	puts "#{hm.name}, #{hm.price}"
	 end


end

