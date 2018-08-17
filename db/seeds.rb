# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ability.destroy_all
Dragon.destroy_all
User.destroy_all
DragonAbility.destroy_all

sophia = User.create(name: "Sophia", age: "24")
jake = User.create(name: "Jake", age: "25")

nala = Dragon.create(name: "Nala", user: sophia)
alex = Dragon.create(name: "Alex", user: jake)
leroy = Dragon.create(name: "Leroy", user: jake)

fire = Ability.create(name: "Fire Breathing")
poop = Ability.create(name: "Poop")
flight = Ability.create(name: "Flight")
speed = Ability.create(name: "Speed")

DragonAbility.create(dragon: nala, ability: fire)
DragonAbility.create(dragon: nala, ability: poop)
DragonAbility.create(dragon: alex, ability: flight)
DragonAbility.create(dragon: leroy, ability: speed)
