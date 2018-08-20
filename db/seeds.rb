# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kelly = User.create(first_name: "Kelly", last_name: "Lwakatare")
emil = User.create(first_name: "Emil", last_name: "Mutalemwa")
bibi = User.create(first_name: "Bibi", last_name: "Mzee")

mateo = Dragon.create(name: "Mateo", flames: 8, user:kelly)
isobel = Dragon.create(name: "Isobel", flames: 4, user:emil)
jojo = Dragon.create(name: "Jojo", flames: 3, user:bibi)