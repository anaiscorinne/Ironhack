class PasswordChecker
	attr_accessor :email, :password

	def check_password(email, password)
		@email = email
		@password = password

		if @email =~ /^([a-zA-Z0-9_\.-]+)@([\da-z\-]+)\.([a-z]{2,6}\.)?[a-z]{2,6}$/ && 
			# @password =~ /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@*#$%^&'])[^ ]{7,}$/
			(@password =~ /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*\W)(?=.*\w)[^ ]{7,}$/)
			true
		else
			false
		end
	end
end