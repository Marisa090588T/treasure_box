# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning data..."

User.destroy_all
ItemListing.destroy_all

puts 'Creating 1 default user...'

default_user = User.new(
  first_name: "firstname",
  last_name: "surname",
  user_name: "user1",
  email: "user@user.com",
  password: "password"
)

default_user.save!

puts 'Creating one item in store...'

item_1 = ItemListing.new(
  item_name: "Test",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem sed risus ultricies tristique nulla aliquet enim tortor.",
  price: rand(10..100),
  user_id: default_user.id
)

item_1.save!
