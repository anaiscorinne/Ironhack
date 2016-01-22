class Person
	# allows us to see the instance variable, but not to change it
	attr_reader :name
	# allows us to see the instance variable, and to change it
	attr_accessor :age
	
	# initializes my instance variable for the class
	def initialize(name, age)
	@name = name
	@age = age
	end

end

anais = Person.new("Anais", "27")
puts anais.name
puts anais.age

anais.age = 25
puts anais.age

# this should not work since we only allow to see this instance variable
# but not to change it.
anais.name = "Ana"
puts anais.name



