require_relative("lib/blog.rb")
require_relative("lib/post.rb")
require_relative("lib/sponsored_post.rb")

blog = Blog.new
blog.add_post Post.new("Post 1", Time.new(2016, 01, 01), "Post 1 text")
blog.add_post Post.new("Post 2", Time.new(2016, 01, 02), "Post 2 text")
blog.add_post Post.new("Post 3", Time.new(2016, 01, 03), "Post 3 text")
blog.add_post SponsoredPost.new("Post 4", Time.new(2016, 01, 04), "Post 4 text")
blog.add_post SponsoredPost.new("Post 5", Time.new(2016, 01, 05), "Post 5 text")
blog.add_post SponsoredPost.new("Post 6", Time.new(2016, 01, 06), "Post 6 text")

blog.publish_front_page
puts "nxt for Next, prev for Previous "

user_input = gets.chomp

while user_input != "exit"

	if user_input.downcase == "nxt"
		blog.next_page
	elsif user_input.downcase == "prev"
		blog.previous_page
	else
		"Goodbye"
	end
	user_input = gets.chomp
end
		

# blog.previous_page
# blog.publish_front_page
