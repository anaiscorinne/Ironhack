# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Project.all.any?
25.times do |i|
	p = Project.create(name: "Project #{i}", description: "Description #{i}")
	if i.odd?
		p.entries.create(hours: 1 * i, minutes: 10 * i)
	else
		p.entries.create(hours: 1 * i, minutes: 10 * i)
		end
	end
end


# Project.create name: 'Ironhack', description: 'Ironhack is..'
# Project.create name: 'Time tracking app'
# Project.create name: 'Recipes', description: 'Track my favorite recipes'