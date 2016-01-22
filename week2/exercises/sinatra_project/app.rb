require "sinatra"

get "/" do 
	"My first Sinatra app."	
end

get "/about" do
	"My name is Anais"
end

get "/author" do
	erb(:author)
end

get "/hi" do
	@greeting = "Hey world!"
	erb(:hi)
end

get "/time" do
	@time = Time.now
	@time_fancy = @time.strftime("%kth hour %Mrd minute")
	erb(:time)
end

get "/hours/ago/:number" do
	@number = params[:number]
	@time = (Time.now - (@number.to_i*3600))
	@the_time = @time.strftime("%k:%M")
	erb(:hours_ago)

end