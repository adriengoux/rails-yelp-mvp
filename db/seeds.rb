# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'clean DB from reviews'
Review.destroy_all

puts "clean DB from restaurants"
Restaurant.destroy_all

puts 'Creating 5 restaurants'
5.times do
  resto = Restaurant.new
  resto.name = Faker::Restaurant.name
  resto.address = Faker::Address.city
  resto.category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  resto.save!
  puts resto.id
  5.times do
    review = Review.new
    review.comment = Faker::Company.bs
    review.rating = rand(1..5)
    review.restaurant_id = resto.id
    review.save!
    puts review.id +
  end
end

puts '5 restos have been created'
puts '-----------'

# puts 'clean DB from reviews'
# Review.destroy_all

# puts 'Creating 25 reviews'
# 5.times do
#   review = Review.new
#   review.comment = Faker::Company.bs
#   review.rating = rand(1..5)
#   review.restaurant_id = rand(20..24)
#   review.save!
#   puts "${review.id}, ${review.restaurant.name}"
# end


