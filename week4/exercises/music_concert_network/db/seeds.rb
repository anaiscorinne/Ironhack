# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


goddess_tour = Concert.create(artist: 'BANKS', venue: 'Grand Central', city: 'Miami', date: DateTime.new(2016, 6, 1), price: 30)
dog_days_tour = Concert.create(artist: 'Florence and the Machine', venue: 'American Airlines Arena', city: 'Miami', date: DateTime.new(2016, 5, 1), price: 100)
tropical_tour = Concert.create(artist: 'Thomas Jack', venue: 'Electric Pickle', city: 'Miami', date: DateTime.new(2016, 2, 10), price: 25)
swedish_tour = Concert.create(artist: 'Joris Voorn', venue: 'Bardot', city: 'Miami', date: DateTime.new(2016, 2, 15), price: 10)