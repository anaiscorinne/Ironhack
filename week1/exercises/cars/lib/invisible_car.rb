# lib/invisible_car.rb

class InvisibleCar < Car 
	def rev
		puts "Cloaking activated #{@color} #{@make}"
		puts @noise
# calls the parent method of rev, instead of copy+paste
	super
	end
end


