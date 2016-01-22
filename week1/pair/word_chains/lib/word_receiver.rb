require 'ruby-dictionary'

class WordReceiver
def initialize (first_word, last_word)
	@first_word=first_word
	@last_word=last_word
	@dictionary = Dictionary.from_file('/usr/share/dict/words') 
	@counter=0
end 

def check_words
	if @dictionary.exists?(@first_word) != true
		puts "Please enter a different first word."
		@first_word = gets.chomp
		check_words
	end 
	if @dictionary.exists?(@last_word) != true
		puts "Please enter a different last word."
		@last_word = gets.chomp
		puts "\n"
		check_words
	end
end

def check_length
	if @first_word.length != @last_word.length
		puts "Hey this doesn't match! Please re-enter the first word."
		print ">"
		@first_word = gets.chomp
		puts "Please enter a second word that matches the length of the first."
		print ">"
		@last_word = gets.chomp
		check_length
	else
		check_words
	end
end

def change_letters
	current_word=nil #we need to define it so we can continue 
	matched = false #does letter 1a and 1b match? 
	@first_word.each_char.with_index do |char_first_word, index|#this takes a string and saves letter of first word and position aka index for each character 
		if char_first_word!=@last_word[index] # && matched
			current_word = @first_word.clone 
			current_word[index] = @last_word[index]
			if @dictionary.exists?(current_word)
				matched = true
				@first_word=current_word
				puts @first_word
			end
		end
	end

	if current_word!=@last_word
		
		if @counter<1000
			@counter+=1
			change_letters
		else
			puts "yo homie, change your words"
		end
	end	
  
end

  def display
  	check_words
  	check_length
  	puts @first_word
  	change_letters
  end
end


puts "Choose the first word you would like to compare:"
print ">"
first_word = gets.chomp
puts "Thanks! Now give me a second word with the same number of letters, please!"
print ">"
last_word = gets.chomp
test = WordReceiver.new(first_word, last_word)
test.display
# CAT--> DOG 