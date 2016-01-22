# lib/car.rb

# every file that contains a class can only contain one class! name of file
#must be named after the class it contains

# class names should be CapitalizedLikeThis
class Car
	def initialize(color, make, noise, noise_type) # set up to receive arguments but not set up in class
		# shouldn't have too many because will be confused by the order
		@color = color # saving color since it can differ, THIS is an instance variable
		@make = make #instance variable when it is an attribute that changes b/n individs
		@noise = noise
		@noise_type = noise_type
	end

	def rev
		puts @noise
	end

	def rev2
		if @noise_type == "Spanish"
			puts "broom broom"
		elsif @noise_type == "German"
			puts "wruum wruum"
		elsif @noise_type == "English"
			puts "vroom vroom"
		elsif @noise_type == "Fly"
			puts "swoosh swoosh"
		else @noise_type == "Invis"
			puts "beeeeeeeee"
		end
	end
				

	def add_bumper_sticker(sticker) # which attributes are absolutely necessary?
		# that is what you set on initialize
		@bumper_sticker = sticker
		
	end
end




