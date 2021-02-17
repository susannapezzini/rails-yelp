# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating 10 restaurants..."
Restaurant.destroy_all
15.times do 
  puts "-"
  Restaurant.create(
    name: Faker::Restaurant.name,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    address: Faker::Address.full_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
end
puts "done!"

puts "creating 100 revies..."
Review.destroy_all
100.times do 
  puts "-"
  Review.create(
    restaurant_id: rand(1..15),
    content: Faker::TvShows::FamilyGuy.quote,
    rating: rand(0..5)
  )
end
puts "done!"

