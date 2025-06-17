# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

10.times do 
  User.create!(
    name: Faker::Name.name,
    cpf: Faker::IdNumber.valid,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
end
10.times do |i|
  Cliente.create!(
    user_id: i+1,
    nome: Faker::Name.name,
    email: Faker::Internet.email,
    telefone: Faker::PhoneNumber.phone_number,
    aniversario: Faker::Date.birthday(min_age: 18, max_age: 65),
    document: Faker::IdNumber.valid,
    newsletter: Faker::Boolean.boolean,
  )
end