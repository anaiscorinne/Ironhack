class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end

class Milkshake
	attr_reader :ingredients
	def initialize
		@base_price = 3
		@ingredients = [ ]
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end
	def price_of_milkshake
		total_price_of_milkshake = @base_price
		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
		end
		total_price_of_milkshake
	end
end

class Milkshake_Shop
	def initialize(name)
		@name = name
		@milkshake_list = []
	end

	def add_milkshakes(milkshake)
		@milkshake_list.push(milkshake)
	end

	def checkout
		total_price = 0
		puts "Milkshakes available:"
		@milkshake_list.each do |milkshake|
			total_price += milkshake.price_of_milkshake
		end
		total_price
		puts "Your total is $#{total_price}"
	end
end

vanilla_flav = Ingredient.new("Vanilla", 1)
chocolate_flav = Ingredient.new("Chocolate", 1)
peanut_flav = Ingredient.new("Peanut Butter", 1)
choc_chips = Ingredient.new("Chocolate Chips", 2)
pean_chips = Ingredient.new("Peanut Butter Chips", 2)
sprinkles = Ingredient.new("Rainbow Sprinkles", 2)
cookie_dough = Ingredient.new("Cookie Dough", 3)
oreo = Ingredient.new("Oreo Cookie Bits", 3)

nizars_milkshake = Milkshake.new
nizars_milkshake.add_ingredient(choc_chips)
nizars_milkshake.add_ingredient(vanilla_flav)
nizars_milkshake.add_ingredient(sprinkles)
puts nizars_milkshake.price_of_milkshake

anais_milkshake = Milkshake.new
anais_milkshake.add_ingredient(peanut_flav)
anais_milkshake.add_ingredient(pean_chips)
anais_milkshake.add_ingredient(cookie_dough)
anais_milkshake.add_ingredient(oreo)
puts anais_milkshake.price_of_milkshake

josh_shop = Milkshake_Shop.new("Josh's Shop")
josh_shop.add_milkshakes(nizars_milkshake)
josh_shop.add_milkshakes(anais_milkshake)
josh_shop.checkout
