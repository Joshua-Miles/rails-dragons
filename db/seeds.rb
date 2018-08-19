# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Dragon.destroy_all

michael = User.create(name: "Michael")
olivia = User.create(name: "Olivia")
amanda = User.create(name: "Amanda")

eragon = Dragon.create(name: "Eragon", user: michael)
toothless = Dragon.create(name: "Toothless", user: olivia)
benedict = Dragon.create(name: "Benedict", user: amanda)
aislyn = Dragon.create(name: "Aislyn", user: michael)
draco = Dragon.create(name: "Draco", user: olivia)
