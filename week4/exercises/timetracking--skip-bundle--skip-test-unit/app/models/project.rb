class Project < ActiveRecord::Base
	def self.clean_old
		where("created_at <= ?", 1.week.ago).destroy
	end
end
