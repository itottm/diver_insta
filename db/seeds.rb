# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do |n|
  email = Faker::Internet.email
  name = Faker::Name.name
  password = "password"
  User.create!(email: email,
               name: name,
               password: password,
               password_confirmation: password
  )
end

100.times do |n|
  title = Faker::Lorem.sentence(3)
  content = Faker::Lorem.paragraphs
  user_id = Faker::Number.between(1, 100)
  Picture.create!(content: content,
               user_id: user_id
  )
end