# Example Exercise: INCEPTION
# Building Data Structures

# example = { 
# 	:appetizers => [ 
# 		0, 
# 		1, 
# 		{ :ingredients => [ 
# 			0, 
# 			{ :name => "bacon" } 
# 		] } 
# 	] 
# }


# puts example[:appetizers][2][:ingredients][1][:name]


# these are equal to each other
# first one has more usability
# you will see the second in some documentation

# { :ingredients => "stuff" }

# { ingredients: "stuff" }

hash = 	{
		:wat => 
		[
			0,
			1,
			{:wut => 
				[
				0,
				[
					[
						0, 
						{:bbq => "yum"}
					]
				]
				]
			}
		]	
		}
		
puts hash[:wat][2][:wut][1][0][1][:bbq]

arr = [[ 0, 1, 2, 3, 4, { :secret => { :unlock => [0, "yes"]}}]]

puts arr[0][5][:secret][:unlock][1]




