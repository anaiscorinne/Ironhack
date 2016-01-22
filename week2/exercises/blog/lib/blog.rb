# require_relative('post.rb')

class Blog 
	attr_accessor :new_posts
	def initialize
		@new_posts = []
	end

	def add_post(post)
		@new_posts.push(post)
	end

	def latest_posts
		@new_posts = @new_posts.sort { | p1, p2 | p2.date <=> p1.date }
	end

end