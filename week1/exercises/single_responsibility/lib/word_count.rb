class WordCount
	def word_count
		user_input = gets.chomp
		words = user_input.split(' ')
		count_words = words.length
		puts "The number of words is #{count_words}"
	end
end