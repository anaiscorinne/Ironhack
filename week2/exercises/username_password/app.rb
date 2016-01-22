require "sinatra"
require "sinatra/reloader" if development?


enable(:sessions)

credentials = {
	"anais" => "pizza",
	"bianca" => "pizza2",
	"faraz" => "code"
}

get "/home" do
	erb(:home)
end

get "/profile" do
	erb(:profile)
end

get "/" do

	if session[:user].nil?
		redirect to('/home')
	else
	  erb(:profile)
	end
end

post "/login" do
 	@username = params[:username]
 	@password = params[:password]
 	
 	@credentials = credentials

	@credentials.each do |key, value|
		if key == @username && value == @password
			session[:user] = @username
		else
			redirect to('/home')
		end
	end
		if session[:user]
			redirect to('/profile')
		end
end

post "/logout" do
	session[:user] = nil

	redirect to("/")
end



# 	tshirt_id = params[:tshirt_id]
	
# 	if session[:cart].nil?
# 		session[:cart] = []
# 	end
# 	session[:cart].push(tshirt_id)

# 	redirect to("/")
# end