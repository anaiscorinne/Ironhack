require_relative("lib/chart.rb")
require_relative("lib/movie.rb")


movie1 = Movie.new("Léon", 8)
movie2 = Movie.new("The Avengers", 8)
movie3 = Movie.new("The Englishman", 6)
movie4 = Movie.new("Pride and Prejudice", 7)
movie5 = Movie.new("Harry Potter and the Philosopher\'s Stone", 7)
movie6 = Movie.new("Rush House", 6)
movie7 = Movie.new("Identity Theft", 5)
movie8 = Movie.new("Rush House", 6)
movie9 = Movie.new("Identity Theft", 5)

chart1 = MovieChart.new
chart1.add_movie(movie1)
chart1.add_movie(movie2)
chart1.add_movie(movie3)
chart1.add_movie(movie4)
chart1.add_movie(movie5)
chart1.add_movie(movie6)
chart1.add_movie(movie7)
chart1.add_movie(movie8)
chart1.add_movie(movie9)

# chart1.print_chart
# chart1.create_numbers
# chart1.list_movies

chart1.display