# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RegUser.create(
first_name: 'Eggy',
last_name: 'McEggerson',
email: 'eggs@eggs.com',
password: 'password'
)
Review.create!(title: '1', body: 'b', image_path: 'c', user_id:1)
