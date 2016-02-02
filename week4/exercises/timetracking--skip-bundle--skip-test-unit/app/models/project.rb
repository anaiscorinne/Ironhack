class Project < ActiveRecord::Base
	has_many :entries
	def self.clean_old
		where("created_at <= ?", 1.week.ago).destroy
	end

  def self.last_created_projects(num)
  	Project.limit(num)
  end

  def total_hours_in_month(month, year)
  	total = 0
  	total_minutes = 0

  	current_month = Date.new(year, month)

  	entries.where(date: current_month.beginning_of_month..current_month.end_of_month).each do |entry|
  		total += e.hours 
  		total_minutes += e.minutes
  	end
  	total + (total_minutes / 60)
  end

end
