# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Dragon.delete_all

bilbo = User.create(name: "Bilbo Baggins")
mulan = User.create(name: "Mulan")
hiccup = User.create(name: "Hiccup")
daenerys = User.create(name: "Daenerys")

smaug = Dragon.create(name: "Smaug", user: bilbo)
mushu = Dragon.create(name: "Mushu", user: mulan)
toothless = Dragon.create(name: "Toothless", user: hiccup)
drogon = Dragon.create(name: "Drogon", user: daenerys)
rhaegal = Dragon.create(name: "Rhaegal", user: daenerys)
viserion = Dragon.create(name: "Viserion", user: daenerys)
