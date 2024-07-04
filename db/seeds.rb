# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Flat.destroy_all

Flat.create!(
  name: "Light & Spacious Garden Flat London",
  address: "10 Clifon Gardens London W9 IDT",
  description: "A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and beautiful conservatory.",
  price_per_night: 75,
  number_of_guests: 3
)

50.times do
  Flat.create!(
    name: Faker::Lorem.word,
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence,
    price_per_night: Faker::Commerce.price(range: 0..1000),
    number_of_guests: rand(1..10),
    image_url: Faker::LoremFlickr.image(size: "250x250", search_terms: ['apartment'])
  )
end
