class Authentication
	attr_reader :user
	def initialize(user)
		@user = user
	end

	def check_username
		puts "\nWelcome\n "
		puts "Username:"
		print "> "
		@username = gets.chomp
		while @username.downcase != "exit"
			if @username.downcase == "anais"
				check_password
			else @username.downcase != "anais"
				puts "That username does not exist!"
				check_username
		end

			
			# @username = gets.chomp
		end
	end

	def check_password
		puts "Password:"
		print "> "
		@password = gets.chomp
		while @password != "exit"
			if @password == "pizza"
				puts "Please enter a sentence to count the number of words."
				word_count
			else @password != "pizza"
				puts "The password is incorrect!"
				check_password
			end
		end
	end

end