# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all

User.create(email: "event.1.batte@yopmail.com", password: Faker::Lorem.words(number: 7))
User.create(email: "event.2.batte@yopmail.com", password: Faker::Lorem.words(number: 7))
User.create(email: "event.3.batte@yopmail.com", password: Faker::Lorem.words(number: 7))
User.create(email: "event.4.batte@yopmail.com", password: Faker::Lorem.words(number: 7))
User.create(email: "event.5.batte@yopmail.com", password: Faker::Lorem.words(number: 7))

Event.create(start_date:Faker::Date.forward(days: 10), duration: [5,10,20,30].sample, title: Faker::Games::Fallout.faction, description: Faker::Lorem.paragraph(sentence_count: 2), price: Faker::Number.between(from: 1, to: 1000),location: Faker::Movies::LordOfTheRings.location, admin_id: rand(1..5))
Event.create(start_date:Faker::Date.forward(days: 10), duration: [5,10,20,30].sample, title: Faker::Games::Fallout.faction, description: Faker::Lorem.paragraph(sentence_count: 2), price: Faker::Number.between(from: 1, to: 1000),location: Faker::Movies::LordOfTheRings.location, admin_id: rand(1..5))
Event.create(start_date:Faker::Date.forward(days: 10), duration: [5,10,20,30].sample, title: Faker::Games::Fallout.faction, description: Faker::Lorem.paragraph(sentence_count: 2), price: Faker::Number.between(from: 1, to: 1000),location: Faker::Movies::LordOfTheRings.location, admin_id: rand(1..5))
Event.create(start_date:Faker::Date.forward(days: 10), duration: [5,10,20,30].sample, title: Faker::Games::Fallout.faction, description: Faker::Lorem.paragraph(sentence_count: 2), price: Faker::Number.between(from: 1, to: 1000),location: Faker::Movies::LordOfTheRings.location, admin_id: rand(1..5))
Event.create(start_date:Faker::Date.forward(days: 10), duration: [5,10,20,30].sample, title: Faker::Games::Fallout.faction, description: Faker::Lorem.paragraph(sentence_count: 2), price: Faker::Number.between(from: 1, to: 1000),location: Faker::Movies::LordOfTheRings.location, admin_id: rand(1..5))