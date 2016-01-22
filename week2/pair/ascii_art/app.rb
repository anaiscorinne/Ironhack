require "sinatra"
require "artii"

get "/ascii/:word/?:font?" do
	@word = params[:word]
	@font = params[:font]
	if @font.nil?
		@font = "doh"
	end
	@final_word = @word.gsub(/_/, " ") 
	@art_word = Artii::Base.new :font => @font
	@final_art_word = @art_word.asciify(@final_word)
	erb(:artii_word)

end

# a = Artii::Base.new :font => 'slant'
# a.asciify('Art!')

# get '/test/?:p1?/?:p2?' do
#   "Hello #{params[:p1]}, #{params[:p2]}"
# end