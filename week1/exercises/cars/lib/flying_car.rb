#lib/flying_car.rb

#you can add different methods
#you can also override existing methods that it inherits from

class FlyingCar < Car #is inheriting from the Class Car
	def fly
		puts "Up! Up! And Away! #{@color} #{@make} #{@noise}"
	end

	def rev
		puts "Up and Away! #{@noise}"
	end
end