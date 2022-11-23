# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do
  restaurant = Restaurant.new(
    name: Faker::TvShows::StrangerThings.quote,
    address: Faker::Movies::HarryPotter.location,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
  )
  restaurant.save
end

60.times do
  review = Review.new(
    rating: rand(1..5),
    content: Faker::TvShows::Friends.quote,
    restaurant_id: rand(1..10)
  )
  review.save
end
