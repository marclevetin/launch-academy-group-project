# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  RegUser.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: "password"
  )
end

20.times do
  Omelette.create(
    reg_user_id: rand(10)+1,
    title: Faker::Hacker.adjective+" "+Faker::Food.ingredient+" omelette",
    description: Faker::Hipster.paragraph(2, false, 2),
    ingredients: [
      Faker::Food.ingredient,
      Faker::Food.ingredient,
      Faker::Food.ingredient
    ]
  )
end

40.times do
  Review.create!(
    body: Faker::Hipster.paragraph,
    rating: rand(5)+1,
    reg_user_id: rand(10)+1,
    omelette_id: rand(20)+1
  )
end
