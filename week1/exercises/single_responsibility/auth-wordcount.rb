require_relative ('lib/word_count.rb')
require_relative('lib/user.rb')
require_relative('lib/authentication.rb')

anais = User.new("anais", "pizza")
authenticate_user = Authentication.new(anais)
authenticate_user.check_username
count_user_words = WordCount.new

# puts "Welcome"
# puts "Username:"
# puts ">"
# username = gets.chomp
# new_user.check_username

# puts "Password:"
# puts ">"
# password = gets.chomp
# new_user.check_password


puts "------------"

# if wrong password then:
# puts "The username and/or password is wrong."


# if wrong password then:
# puts "Welcome back, #{username}!"

# puts "Please enter some text to count words:"
# text = gets.chomp

# puts "------------"

# puts "The entered text has _42_ words."