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
