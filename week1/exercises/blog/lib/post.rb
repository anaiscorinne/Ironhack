class Post
	attr_reader :title, :date, :text
	def initialize(title, date, text)
		@date = date
		@title = title
		@text = text
	end

	def display
		puts "#{@title}"
		puts "**************"
		puts "#{@text}\n" 
		puts "----------------"
	end
end