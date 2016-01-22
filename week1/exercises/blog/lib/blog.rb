require 'colorize'

class Blog 
	def initialize
		@current_page = 1
		@posts_per_page = 3
		@posts = []
		# @page = Page.new()
	end

	def add_post(post)
		@posts.push(post)
	end

# originally used an array printer. makes more sense to use display method.

	# def array_printer(array)
	# first_post = (@current_page -1) * @posts_per_page
	# last_post = (first_post - 1) + 3
	# array[first_post..last_post].each do | post |
	# 	puts "#{post.title} \n************* \n#{post.text} \n-------------- \n "
	# 	end
	# end

	def sort_posts_by_date
		@posts.sort { | p1, p2 | p2.date <=> p1.date }
	end

	def publish_front_page
		first_post = (@current_page - 1) * @posts_per_page
		last_post = (first_post + @posts_per_page) -1
		current_posts = @posts[first_post..last_post]
		sort_posts_by_date
		current_posts.each do | post |
			post.display
		end
	pagination_section
	end

def pagination_section
	pagination_section = ""
	(1..last_page).each do | page |
		if page == @current_page
			pagination_section += "#{page} ".red
		else
			pagination_section += "#{page} "
		end
	end
	puts pagination_section 
end

	def next_page
		if !last_page?
		 @current_page += 1
		 publish_front_page
		else
			puts "You are already on the last page.".red
			puts "You can either go prev or exit.".red
		end
	end

	def previous_page
		if @current_page != 1
		 @current_page -= 1
		publish_front_page
		else
			puts "You are already on the first page.".red
			puts "You can either go nxt or exit.".red
		end
	end

	def last_page
		(@posts.length / 3.0).ceil
	end

	def last_page?
		@current_page == last_page
	end

end
