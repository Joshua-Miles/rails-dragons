# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dragon.destroy_all
User.destroy_all

User.create(name: "Bob")
User.create(name: "Frank")
User.create(name: "Jane")
User.create(name: "Karl")

Dragon.create(name: "Herbert", breed: "Fire Breather", user_id:1 )
Dragon.create(name: "Lucy", breed: "Smoker", user_id:2 )
Dragon.create(name: "Macy", breed: "Mean Smoker", user_id:3 )
Dragon.create(name: "Doug", breed: "Fire Spitter", user_id:4 )