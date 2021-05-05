# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# rails generate model Products name:string price:integer img_url:string description:string
product = Product.create(name: "Microsoft xbx one series x", price:499, img_url: "example.jpg", description: "A gaming system, that you can find")