class Milkshake
	attr_reader :ingredients
	def initialize
		@base_price = 3
		@ingredients = []
	end
	def add_ingredient(ingredients)
		@ingredients.push(ingredient)
	end
	def price_of_milkshake
		total_price = @base_price
		@ingredients.each do |ingredient|
			total_price += ingredient.price
		end
		total_price
	end
end

class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end

class Shake_Shop
	def initialize(name)
		@name = name
		@list = []
	end

	def add_milkshake(milkshake)
		@list.push(milkshake)
	end

	def checkout
		milkshakes_total_price = 0
		puts "Milkshake List:"
		@list.each do |milkshake|
			list_ingredients = ""
			milkshake.ingredients.each {ingredient | list_ingredients += (ingredient.name + " ")}
			puts list_ingredients + "milkshake, #{milkshake.price_of_milkshake} $"
			milkshakes_total_price += milkshake.price_of_milkshake
		end
		puts "The total price is #{milkshakes_total_price} $"
		puts "Thanks for shopping with #{@name}'s shop!"
	end
end


