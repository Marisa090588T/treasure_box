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

puts 'Creating 10 item in store...'

item_1 = ItemListing.new(
  item_name: "Test1",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem sed risus ultricies tristique nulla aliquet enim tortor.",
  price: rand(10..100),
  user_id: default_user.id
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603466125/e1agl5fibigm6ptyfdng.jpg')
item_1.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
item_1.save!

puts 'Item 1 created!'

item_2 = ItemListing.new(
  item_name: "Test2",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem sed risus ultricies tristique nulla aliquet enim tortor.",
  price: rand(10..100),
  user_id: default_user.id
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603466137/uzfydbksjnt9cam5x1tt.jpg')
item_2.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
item_2.save!

puts 'Item 2 created!'

item_3 = ItemListing.new(
  item_name: "Test3",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem sed risus ultricies tristique nulla aliquet enim tortor.",
  price: rand(10..100),
  user_id: default_user.id
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603466145/c5qt9v7j46bvmklvauwr.jpg')
item_3.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
item_3.save!

puts 'Item 3 created!'

item_4 = ItemListing.new(
  item_name: "Test4",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem sed risus ultricies tristique nulla aliquet enim tortor.",
  price: rand(10..100),
  user_id: default_user.id
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603466152/snx8xcu9obaylzf6rjfr.jpg')
item_4.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
item_4.save!

puts 'Item 4 created!'

item_5 = ItemListing.new(
  item_name: "Test5",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem sed risus ultricies tristique nulla aliquet enim tortor.",
  price: rand(10..100),
  user_id: default_user.id
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603466162/gqsdwa1dexxtvyulcc5b.jpg')
item_5.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
item_5.save!

puts 'Item 5 created!'

item_6 = ItemListing.new(
  item_name: "Test6",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem sed risus ultricies tristique nulla aliquet enim tortor.",
  price: rand(10..100),
  user_id: default_user.id
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603466178/ymwypbxphzqirjgsgqe5.jpg')
item_6.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
item_6.save!

puts 'Item 6 created!'

item_7 = ItemListing.new(
  item_name: "Test7",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem sed risus ultricies tristique nulla aliquet enim tortor.",
  price: rand(10..100),
  user_id: default_user.id
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603466167/qeaqqqndtpm7pyirfnzh.jpg')
item_7.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
item_7.save!

puts 'Item 7 created!'

item_8 = ItemListing.new(
  item_name: "Test8",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem sed risus ultricies tristique nulla aliquet enim tortor.",
  price: rand(10..100),
  user_id: default_user.id
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603466185/rngmex5d3kfpfom0ijud.jpg')
item_8.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
item_8.save!

puts 'Item 8 created!'

item_9 = ItemListing.new(
  item_name: "Test9",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem sed risus ultricies tristique nulla aliquet enim tortor.",
  price: rand(10..100),
  user_id: default_user.id
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603466207/vlsqahbwzizmykaubnm3.jpg')
item_9.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
item_9.save!

puts 'Item 9 created!'

puts 'Creating 5 stores(?) for default user!'

# 5.times do
#   store = Store.new(
#     total_price: rand(10..100),
#     item_status: Store::STATUS.sample,
#     item: ItemListing.all.sample,
#     user: User.all.sample
#     )
#   booking.save!
# end
