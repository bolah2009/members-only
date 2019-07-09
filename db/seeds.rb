# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'Bola',
             email: 'bola@example.com',
             password: 'password',
             password_confirmation: 'password')

User.create!(name: 'Sergio',
             email: 'sergio@example.com',
             password: 'password',
             password_confirmation: 'password')

users = User.order(:created_at).take(2)
1.times do
  title = Faker::Book.title
  body = Faker::Lorem.sentence(15)
  users.each { |user| user.posts.create!(title: title, body: body) }
end
