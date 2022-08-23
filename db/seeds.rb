require 'faker'

User.destroy_all
Offer.destroy_all
puts 'Creating...'
user = User.new(first_name: Faker::Games::SuperMario.character, last_name: Faker::Games::SuperMario.location, email: "test@test.com")
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.save!
10.times do
  offer = Offer.new(title: Faker::TvShows::TwinPeaks.quote, description: Faker::Hacker.say_something_smart, price: rand(1...500), media: Faker::Cannabis.brand, niche: Faker::Cannabis.cannabinoid, reach: rand(1000...50000))
  offer.user = User.last
  offer.save!
end
puts 'Created'
