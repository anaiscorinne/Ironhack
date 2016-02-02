class Project < ActiveRecord::Base
	has_many :entries
	def self.clean_old
		where("created_at <= ?", 1.week.ago).destroy
	end

  def self.last_created_projects(num)
  	Project.limit(num)
  end

end
