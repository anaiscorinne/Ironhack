class Memory
	def initialize(file_path)
			@file_path = file_path
	end

	def save(number)
		IO.write(@file_path, number)
	end

	def load_number
		begin
			IO.read(@file_path)
		rescue
			return nil
		end
	end
end