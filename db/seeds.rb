# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author = Author.create([{ first_name: 'Luke', last_name: " Skywalker", age: 45}, { first_name: 'Bill', last_name: "Shine", age: 65 }])

book = Book.create([{ title: 'Star Wars', author_id: 1, year: 1972, publisher: "Random House"}, { title: 'Lord Of The Rings', author_id: 2, year: 2005, publisher: "Random House"}])