class ShoppingCart
	attr_accessor :items
	def initialize
		@items = []
	end

	def add_item(item)
		@items.push(item)
	end

	def checkout
		total = 0
		#does this make sense? I am not sure how I came
		#up with it..
		@items.each do |item|
			total += item.price 
		end
		if @items.size > # should this be 5 or 4?
			total * 0.9
		else
			total
		end
	end
end


class Item
	attr_accessor :price
	def initialize(name, price)
		@name = name
		@price = price
	end
	#do I need a price function here for items that 
	#don't fall in the other categories?
end

class Houseware < Item
	def price
		if @price > 100
			return @price * 0.95
		else
			return @price
		end
	end
end

class Fruit < Item
	def price
		now = Time.now
		if (now.saturday? || now.sunday?) == true
			return @price * 0.9
		else 
			return @price
		end
	end
end

josh_cart = ShoppingCart.new
banana = Fruit.new("bananas", 10)
oj = Fruit.new("orange juice", 10)
vacuum = Houseware.new("vacuum cleaner", 150)
juicer = Houseware.new("juicer", 90)
rice = Item.new("rice", 1)
anchovies = Item.new("anchovies", 2)

josh_cart.add_item(oj)
josh_cart.add_item(oj)
josh_cart.add_item(vacuum)
josh_cart.add_item(juicer)
josh_cart.add_item(rice)
josh_cart.add_item(rice)
josh_cart.add_item(anchovies)

puts "Your total today is $#{josh_cart.checkout}."
