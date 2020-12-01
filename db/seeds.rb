Track.destroy_all
Song.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
    Track.create(link: Faker::Internet.url)
end

20.times do
    Song.create(title: Faker::Music::Prince.song, metadata: Faker::String.random)
end


######################  FOR REFRENCE  #########################
# This is the way I saw seeds.rb done in the flatiron tutorial at
# 
# https://learning.flatironschool.com/courses/1282/pages/creating-a-rails-api-from-scratch?module_item_id=99495
# ... good stuff, worth the read
###############################################################
#
# bird_a = Bird.create(name: "Black-Capped Chickadee", species: "Poecile Atricapillus")
# bird_b = Bird.create(name: "Grackle", species: "Quiscalus Quiscula")
# bird_c = Bird.create(name: "Common Starling", species: "Sturnus Vulgaris")
# bird_d = Bird.create(name: "Mourning Dove", species: "Zenaida Macroura")
#
# location_a = Location.create(latitude: "40.730610", longitude: "-73.935242")
# location_b = Location.create(latitude: "30.26715", longitude: "-97.74306")
# location_c = Location.create(latitude: "45.512794", longitude: "-122.679565")
#
# sighting_a = Sighting.create(bird: bird_a, location: location_a)
# sighting_b = Sighting.create(bird: bird_b, location: location_b)
# sighting_c = Sighting.create(bird: bird_c, location: location_c) 
