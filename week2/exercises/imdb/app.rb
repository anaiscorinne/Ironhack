require 'sinatra'
require 'sinatra/reloader' if development?
require 'imdb'

require_relative('lib/poster.rb')

movie = Movie.new


get "/" do
	erb(:home)
end

get "/imdb_test" do
	@search_result = params[:search]
	@movie_posters = movie.movie_search(@search_result)
	@number_of_results = @movie_posters.length
	movie.randomizer
	@random_movie = movie.random_movie
	# @random_movie = random_movie

	erb(:imdb_test)
end

post "/quiz_answer" do
	@quiz_title = params[:movie_title]
	@random_movie_title = params[:random_movie]

	if @quiz_title = @random_movie_title
		redirect to "/answer"
	else
		erb(:wrong_answer)
	end
end

get "/answer" do
	erb(:answer)
end



