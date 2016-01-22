# app.rb

# represents code that I run when I do Ruby.
# this must make reference to what it will use - method require_relative

require_relative("lib/car.rb")
require_relative("lib/flying_car.rb")
require_relative("lib/invisible_car.rb")


# variable and method names should be lowercase_with_underscores
# car1 = Car.new
# car1.rev

# let's add new cars
faye_the_fit = Car.new("grey", "Honda", "broom broom", "Spanish") #specifying we need to provide car name and color
bella_the_cooper = Car.new("red", "Mini", "vroom vroom", "English")
matts_mazda = Car.new("red", "Mazda", "wruum wruum", "German") # if we don't change the car.rb then this will call error

# we must call the initialize method in the car to define what parameters we will feed
#if not the automaticall called initialize calls 0 parameters

faye_the_fit.rev
bella_the_cooper.rev2

my_flying_car = FlyingCar.new("blue", "Tesla", "swoosh swoosh", "Fly")
my_flying_car.rev2
my_flying_car.fly
my_flying_car.rev

my_invisible_car = InvisibleCar.new("camo", "Tesla", "beeeeeeeee", "Invis")
my_invisible_car.rev
my_invisible_car.rev2