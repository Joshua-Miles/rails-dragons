# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Joe")
User.create(name: "Mike")
User.create(name: "Sue")
User.create(name: "Ann")
User.create(name: "Reid")
User.create(name: "Doug")

Dragon.create(name: "Owen", user_id: 4)
Dragon.create(name: "Nautilus", user_id: 4)
Dragon.create(name: "Olive", user_id: 2)
Dragon.create(name: "Monster", user_id: 5)
Dragon.create(name: "RBG", user_id: 4)
Dragon.create(name: "Big Hero", user_id: 1)
Dragon.create(name: "Pocahontas", user_id: 3)
