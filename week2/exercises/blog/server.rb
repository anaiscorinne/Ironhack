require_relative('lib/blog.rb')
require_relative('lib/post.rb')
require_relative('lib/comment.rb')

# server.rb
# [...]

blog = Blog.new

blog.add_post Post.new("Welcome", Time.new(2016, 01, 01), "Hello, my name is Anais, welcome to my blog.", 1)
blog.add_post Post.new("This is my second Blog Post", Time.new(2016, 01, 05), "So excited to be writing here again, and so much left to say.", 2)
blog.add_post Post.new("Third One Here", Time.new(2016, 01, 10), "Tell me a litt bit about you! I want to hear your stories too.", 3)
sorted_posts = blog.latest_posts

require "sinatra"
require "sinatra/reloader" if development?


get "/" do 
	@posts = sorted_posts
	erb(:blog)
end

get "/post/:post_id" do
	@post_id = params[:post_id].to_i
	@post_type = sorted_posts[@post_id - 1]
	@displayed_comments = @post_type.comments

	erb(:post)
end

post "/comment/:post_id" do
	post_id = params[:post_id].to_i
	post_type = sorted_posts[post_id - 1]
	author = params[:author]
	content = params[:content]
	comment = Comment.new(author, content)
	post_type.add_comment(comment)


	redirect to ("/post/#{post_id}")

end




