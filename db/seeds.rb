# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

10.times do
  Restaurant.create({
    name: Faker::Restaurant.name,
    phone_number: Faker::PhoneNumber.cell_phone,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  })
end

50.times do
  Review.create({
    content: Faker::Lorem.paragraph,
    rating: rand(1..5),
    restaurant_id: rand(1..20)
  })
end
