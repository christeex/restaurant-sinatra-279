require 'faker'

25.times do
  restaurant = Restaurant.new(
    name: Faker::Superhero.name,
    city: "#{rand(1..5)}#{rand(6..15)} #{Faker::Superhero.power}",
  )
  restaurant.save!
end
