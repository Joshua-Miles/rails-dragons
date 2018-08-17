# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Dragon.destroy_all


dany = User.create(name: "Daenerys Stormborn", house: "Targaryen")
john = User.create(name: "John Snow", house: "Stark")
tyrion = User.create(name: "Tyrion", house: "Lannister")
arya = User.create(name: "Arya", house: "Stark")
night = User.create(name: "The Night King", house: "Dead")

drogo = Dragon.create(name: "Drogon", color: "black and red", user_id: 1)
viserion = Dragon.create(name: "Viserion", color: "green and bronze", user_id: 5)
rhaegal = Dragon.create(name: "Rhaegal", color: "cream and gold", user_id: 2)