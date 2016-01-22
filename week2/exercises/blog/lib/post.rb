# require_relative('blog.rb')

class Post
	attr_accessor :title, :date, :text, :id, :comments
	def initialize(title, date, text, id)
		@title = title
		@date = date
		@text = text
		@id = id
		@comments = []
	end

	def add_comment(comment)
		@comments.push(comment)
	end


end