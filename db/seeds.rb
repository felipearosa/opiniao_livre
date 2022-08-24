
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

arr = ['Corrente de Whatsapp', 'Vlog no Youtube', 'Artigo Jurídico', 'Stories no Instagram', 'Dancinha no TikTok', 'Tweet', 'Coluna no Jornal']

puts 'Creating...'
user = User.new(first_name: Faker::Games::SuperMario.character, last_name: Faker::Games::SuperMario.location, email: "test2@test.com")
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.save!
10.times do
  offer = Offer.new(title: Faker::TvShows::TwinPeaks.quote, description: Faker::Hacker.say_something_smart, price: rand(1...500), media: arr.sample, niche: Faker::Cannabis.cannabinoid, reach: rand(1000...50000))
  offer.user = User.last
  offer.save!
end
puts 'Created'
