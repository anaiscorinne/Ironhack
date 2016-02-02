class Contact < ActiveRecord::Base
	def self.validate(name, address, phone, email)
		if validate_name(name) && validate_address(address) && validate_phone(phone) && validate_email(email)
			true
		end
	end
	def self.validate_name(name)
		if name.length > 0
			true
		end
	end

	def self.validate_address(address)
		if address.length > 0
			true
	end
end

	def self.validate_phone(phone)
		if phone.gsub(/[0-9]{3}-[0-9]{3}-[0-9]{4}/, "").length == 0
			true
		end
	end

	def self.validate_email(email)
		if email =~ /^([a-zA-Z0-9_\.-]+)@([\da-z\-]+)\.([a-z]{2,6}\.)?[a-z]{2,6}$/
			true
		end
	end

end
