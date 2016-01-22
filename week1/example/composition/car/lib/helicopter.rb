class Helicopter
	attr_reader :wheels
	def initialize
		@wheels = 3
		@sound = 'TuTuTu'
	end
end

class Airplane
	attr_reader :wheels
	def initialize
		@wheels = 6
		@sound = "Rrrrrrr"
	end
end

class Car
	attr_reader :wheels
	def initialize
		@wheels = 4
		@sound = "Vroom"
	end
end

class Limo
	attr_reader :wheels
	def initialize
		@wheels = 4
		@sound = "Broom Broom"
	end
end



class WheelCounter
	def initialize
		@vehicles = []
	end

	def add_vehicle(vehicle)
		@vehicles.push(vehicle)
	end

	def wheel_count
		total_wheels = 0
		@vehicles.each do | vehicle |
			total_wheels += vehicle.wheels
		end
	"The total number of wheels is #{total_wheels}."
	end

end



#  Created different types of vehicles
chopper1 = Helicopter.new
chopper2 = Helicopter.new
airplane1 = Airplane.new
airplane2 = Airplane.new
car1 = Car.new
car2 = Car.new
limo1 = Limo.new
limo2 = Limo.new

#  Created wheel counter
counter = WheelCounter.new

#  Add vehicles to the counter
counter.add_vehicle(chopper1)
counter.add_vehicle(chopper2)
counter.add_vehicle(airplane1)
counter.add_vehicle(airplane2)
counter.add_vehicle(car1)
counter.add_vehicle(car2)
counter.add_vehicle(limo1)
counter.add_vehicle(limo2)

#  Call method to find out how many wheels there are
puts counter.wheel_count





