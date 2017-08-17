# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Restaurant.create({
  name: "La Bella Isola",
  address: Faker::Address.street_address,
  phone_number: Faker::Number.number(10),
  category: "italian"})

Restaurant.create({
  name: "Golden Duck",
  address: Faker::Address.street_address,
  phone_number: Faker::Number.number(10),
  category: "chinese"})

Restaurant.create({
  name: "Mikado Sushi",
  address: Faker::Address.street_address,
  phone_number: Faker::Number.number(10),
  category: "japanese"})

Restaurant.create({
  name: "Paris",
  address: Faker::Address.street_address,
  phone_number: Faker::Number.number(10),
  category: "french"})

Restaurant.create({
  name: "Lode & Stijn",
  address: Faker::Address.street_address,
  phone_number: Faker::Number.number(10),
  category: "belgian"})
