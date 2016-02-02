# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# unless Contact.all.any?
10.times do |i|
	Contact.create(name: "Contact Name #{i}", address: "#{i} Miami Beach, FL 33140", phone_number: "305-205-7516", email_address: "email@contact.me")
end
