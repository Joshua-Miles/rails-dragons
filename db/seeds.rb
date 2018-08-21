# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DragonAbility.destroy_all
Dragon.destroy_all
User.destroy_all
Ability.destroy_all



michael = User.create(name: "Michael")
olivia = User.create(name: "Olivia")
amanda = User.create(name: "Amanda")

fire = Ability.create(name: 'Breathes Fire')
flight = Ability.create(name: 'Fly')
ice = Ability.create(name: 'Ice Breath')

Dragon.create(name: "Eragon", user: michael, abilities: [fire, ice])
Dragon.create(name: "Toothless", user: olivia, abilities: [flight])
Dragon.create(name: "Benedict", user: amanda, abilities: [ice, flight])
Dragon.create(name: "Aislyn", user: michael, abilities: [fire])
Dragon.create(name: "Draco", user: olivia, abilities: [flight])
