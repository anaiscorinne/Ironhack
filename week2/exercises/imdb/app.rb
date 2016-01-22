require 'sinatra'
require 'sinatra/reloader' if development?
require 'imdb'


get "/" do
	erb(:home)
end

get "/imdb_test" do
	search = Imdb::Search.new("")

	@number_of_results = search.movies.length
	@first_result = search.movies[]

	erb(:imdb_test)
end