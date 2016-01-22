class Lexiconomitron

	def eat_t(string)
     if string.is_a? String
    	string.gsub(/[tT]/,'')
    else
    	nil
  end 
	end 

	 def shazam (array)
    	if array.is_a? Array
   		 array.map do |word| 
      	eat_t(word).reverse!
   		 end
		else 
			[]
 		 end
end
end

# lexi = Lexiconomitron.new
# lexi.eat_t("great scott!")
