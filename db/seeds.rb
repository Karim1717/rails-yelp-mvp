# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+44798634523", stars: 5, category: "french" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+44234568761", category: "italian",  stars: 4 }
la_bonne_frite = { name: "La_bonne_frite", address: "en face de la gare", phone_number: "+32876667801", category: "belgian",  stars: 1 }
lao_tseu =  { name: "lao_tseu", address: "Churchil square 54", phone_number: "+44234568722", category: "chinese", stars: 2 }
omakase =  { name: "Omakase", address: " 37 Nothill hill lane", phone_number: "+44232345998", category: "japanese", stars: 4 }
[dishoom, pizza_east, la_bonne_frite, lao_tseu, omakase].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
