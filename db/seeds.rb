# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: "lemon")
puts "done"
Ingredient.create(name: "ice")
puts "done"
Ingredient.create(name: "mint leaves")
puts "done"

url = "qr7kev0lvhnl1s9dvgoy"
cocktail = Cocktail.new(name: 'Console')
cocktail.picture = url
cocktail.save
