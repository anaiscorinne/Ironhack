module ApplicationHelper
	def flash_message
		flash_content(:notice) || flash_content(:alert)
		# if flash[:notice]
		# 	flash_content(:notice)
		# elsif flash[:alert]
		# 	flash_content(:alert)
		# end
	end

	private

	def flash_content(type)
		if flash[type]
			content_tag :div, class: type do
				content_tag :p do
					content_tag :strong do
						flash[type]
					end
				end
			end
		end
	end
end
