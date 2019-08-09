# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Ingredient.create(name: "Salt")
Ingredient.create(name: "Pepper")

a = Cocktail.new(name: 'Green demon', photos: 'zqwwmipwa9ueuwgadeks')
puts a
a.save!
