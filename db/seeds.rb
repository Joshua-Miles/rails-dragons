# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


billy = User.create(name: 'Billy Bill', age: 20)
suzy = User.create(name: 'Suzy Sue', age: 18)
timmy = User.create(name: 'Timmy Tim', age: 14)

blue  = Dragon.create(name: 'Blue', age: 5, color: 'blue', user: billy)
green = Dragon.create(name: 'Green', age: 7, color: 'green', user: suzy)
red = Dragon.create(name: 'Red', age: 8, color: 'red', user: timmy)
