class Calculator
	attr_reader :result

	def add(first_number, second_number)
		@result = first_number + second_number
		@result
	end

	def subtract(first_number, second_number)
		@result = first_number - second_number
		@result
	end

	def multiply(first_number, second_number)
		@result = first_number * second_number
		@result
	end

	def divide(first_number, second_number)
		@result = first_number / second_number
		@result
	end

end