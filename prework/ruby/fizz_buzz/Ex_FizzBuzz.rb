
(1..100).each do |i|
	result = ""
	result << 'Fizz' if i % 3 == 0
	result << "Buzz" if % 5 == 0
	result << "Bang" if i.to_s[0] == "1"
	if result == ""
		puts i
	else puts result
	end
end



