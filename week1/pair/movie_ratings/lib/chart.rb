class MovieChart
	def initialize
	@movies = []
	@chart = ""
	@numbers = ""
	@separator = "-"
	@list = ""
	end

	def add_movie(movie)
		@movies.push(movie)
	end
	
	def print_chart
	10.downto(1) do |i|
		@movies.each do | movie |
			if movie.rating >= i
				@chart += "|#"
			else
				@chart += "| "
				end
			end
			@chart += "| \n"
		end
	end

	def create_numbers
		@movies.each_with_index do |movie, index|
			@numbers += "|#{index + 1}"
		end
		@numbers += "|\n "
		@numbers
	end

	def list_movies
		@list = @movies.each_with_index do |movie, index|
			puts "#{index + 1}. #{movie.title}"
		end
	end

	def create_separator
		@movies.each do |movie|
			@separator += "--"
		end
		@separator += "\n"
	end

	def display
		print_chart
		create_separator
		create_numbers
		@chart += @separator
		@chart += @numbers.to_s
		# @separator
		# @numbers
		# @list
		puts @chart
		list_movies
	end

end


