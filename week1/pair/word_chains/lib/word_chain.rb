# lib/word_chain.rb


class WordChain
	def initialize(dictionary)
		@dictionary = dictionary
	end

	def print_chain(start_word, end_word)
		puts "#{start_word} --> #{end_word}"
		puts start_word

		while start_word != end_word
			last = start_word - 1
			attempts = 0
			failed_attempts = 0

			(0).upto(last) do | i |
				if start_word[i] != end_word[i]
				attempts += 1

					letter_backup = start_word[i]
					start_word[i] = end_word[i]

					if @dictionary.exists?(start_word)
						puts start_word
					else
						start_word[i] = letter_backup 	
					end 
				end
			end
			
			if failed_attempts == attempts
				puts "FAILED!"
				break #only works with while and for loops
			end
		end
	end
end