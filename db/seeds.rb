# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

kittens = Kitten.create([
  { name: "Boo", age: 2, cuteness: 7.5, softness: 9 },
  { name: "Foo", age: 8, cuteness: 6.1, softness: 10 },
  { name: "Bar", age: 1, cuteness: 9.5, softness: 5.9 },
  { name: "Haar", age: 12, cuteness: 8.8, softness: 9.1 }
])
