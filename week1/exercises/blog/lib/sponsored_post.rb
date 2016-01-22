class SponsoredPost < Post 
	def display
		puts "*****Sponsored Post******\n"
		super # useful when you want to call
			# the entire parent method
		puts "*****Sponsored Post******"
	end
end