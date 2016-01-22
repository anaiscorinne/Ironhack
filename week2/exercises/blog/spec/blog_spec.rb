require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

RSpec.describe "Blog" do 

	before :each do
		@blog = Blog.new

		@blog.add_post Post.new("Welcome", Time.new(2016, 01, 01), "Hello, my name is Anais, welcome to my blog.")
		@blog.add_post Post.new("This is my second Blog Post", Time.new(2016, 01, 05), "So excited to be writing here again, and so much left to say.")
		@blog.add_post Post.new("Third", Time.new(2016, 01, 10), "Tell me a litt bit about you! I want to hear your stories too.")
		
	end

	describe "blog works" do
		it "makes a new array" do
			expect(@blog.new_posts.size).to eq(3)
		end

		it "adds to the empty array" do
			expect(@blog.new_posts[0].title).to eq("Welcome")
		end
		
		it "sorts posts by latest one" do
			@blog.latest_posts
			expect(@blog.new_posts[0].title).to eq("Third")
		end
	end

end