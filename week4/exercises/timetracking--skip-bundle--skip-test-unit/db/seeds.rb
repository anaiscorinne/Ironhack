# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Project.all.any?
25.times do |i|
	Project.create(name: "Project #{i}", description: "Description #{i}")
end


Project.create name: 'Ironhack', description: 'Ironhack is..'
Project.create name: 'Time tracking app'
Project.create name: 'Recipes', description: 'Track my favorite recipes'