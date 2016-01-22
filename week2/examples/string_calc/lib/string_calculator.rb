class StringCalculator
	def add(string_of_numbers)
		sum = 0
		array_of_numbers = string_of_numbers.split(/\W/).map { |s| s.to_i }
		array_of_numbers.each { |x| sum += x }
		sum	
	end
end