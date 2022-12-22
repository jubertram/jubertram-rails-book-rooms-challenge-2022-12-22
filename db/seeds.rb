# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Hotel.destroy_all
User.destroy_all

hotel1 = Hotel.create!(name: "L'orangeraie", address: "15 Rue Partouneaux, Menton, France")

room1 = Room.new(hotel_id: hotel1.id, capacity: (1..6).to_a.sample)
room1.price_per_night = (10..50).to_a.sample * room1.capacity
room1.save!

room2 = Room.new(hotel_id: hotel1.id, capacity: (1..6).to_a.sample)
room2.price_per_night = (10..50).to_a.sample * room2.capacity
room2.save!

room3 = Room.new(hotel_id: hotel1.id, capacity: (1..6).to_a.sample)
room3.price_per_night = (10..50).to_a.sample * room3.capacity
room3.save!

hotel2 = Hotel.create!(name: "LeWagon", address: "21 avenue thiers, Nice, France")

room4 = Room.new(hotel_id: hotel2.id, capacity: (1..6).to_a.sample)
room4.price_per_night = (10..50).to_a.sample * room4.capacity
room4.save!

room5 = Room.new(hotel_id: hotel2.id, capacity: (1..6).to_a.sample)
room5.price_per_night = (10..50).to_a.sample * room5.capacity
room5.save!

room6 = Room.new(hotel_id: hotel2.id, capacity: (1..6).to_a.sample)
room6.price_per_night = (10..50).to_a.sample * room6.capacity
room6.save!

hotel3 = Hotel.create!(name: "LeWagon", address: "21 avenue thiers, Nice, France")

room7 = Room.new(hotel_id: hotel3.id, capacity: (1..6).to_a.sample)
room7.price_per_night = (10..50).to_a.sample * room7.capacity
room7.save!

room8 = Room.new(hotel_id: hotel3.id, capacity: (1..6).to_a.sample)
room8.price_per_night = (10..50).to_a.sample * room8.capacity
room8.save!

room9 = Room.new(hotel_id: hotel3.id, capacity: (1..6).to_a.sample)
room9.price_per_night = (10..50).to_a.sample * room9.capacity
room9.save!

user = User.create!(email: "test@test.com", password: "password")
