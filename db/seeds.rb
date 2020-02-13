require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Potin.destroy_all
Comment.destroy_all

User.create(first_name: "Charlie", last_name: "Carpene", age: "29", origin: "Montpellier", description: "J'aime les chips", email: "charlie@charlie.com")
User.create(first_name: "Marie", last_name: "Distinguin", age: "27", origin: "Perigeux", description: "J'aime les cacahuètes", email: "marie@marie.com")
User.create(first_name: "Joannice", last_name: "Thevenon", age: "25", origin: "Lyon", description: "J'aime les pistaches", email: "jonas@jonas.com")

Potin.create(title: "Le feu ça brule", description: "Contre toute attente : le feu, ça brule !", user: User.all.sample)
Potin.create(title: "Gravité", description: "En chute libre, on a tendance à tomber.", user: User.all.sample)
Potin.create(title: "L'espoir", description: "Et non pas les poires, c'est important. Alors que les poires, en vrai, c'est bon <3", user: User.all.sample)
Potin.create(title: "Le chat", description: "manisme", user: User.all.sample)
Potin.create(title: Faker::Quote.singular_siegler , description: Faker::Quote.yoda, user: User.all.sample)

20.times do 
  Comment.create(content: Faker::Movies::HarryPotter.quote, potin: Potin.all.sample, user: User.all.sample)
end
