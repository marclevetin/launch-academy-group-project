# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# RegUser.create(
#   first_name: 'Eggy',
#   last_name: 'McEggerson',
#   email: 'eggs@eggs.com',
#   password: 'password'
# )
# Review.create!(title: '1', body: 'b', image_path: 'c', user_id:1)

require 'faker'

10.times do
  RegUser.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.safe_email, password: Faker::Hipster.words(3).join)
end

20.times do
  Omelette.create(reg_user_id: rand(10)+1, title: Faker::Hacker.adjective+" "+Faker::Food.ingredient+" omelette", description: Faker::Hipster.paragraph(2, false, 2), ingredients: [Faker::Food.ingredient,Faker::Food.ingredient,Faker::Food.ingredient])
end

40.times do
  Review.create!(title: Faker::Hipster.sentence(1, false, 4), body: Faker::Hipster.paragraph, reg_user_id: rand(10)+1, omelette_id: rand(20)+1)
end
