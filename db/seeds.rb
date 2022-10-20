# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning up database..."
FishingSpot.destroy_all
puts "Database cleaned"

puts 'seeding...'
fishing_activity = (0..3).to_a

FishingSpot.create(address: "Riche-Terre", fishing_activity: fishing_activity.sample,
                  latitude: -20.12586829300821, longitude: 57.50132535042191)
FishingSpot.create(address: "Le Goulet", fishing_activity: fishing_activity.sample,
                  latitude: -20.10252501081538, longitude: 57.51427523697359)
FishingSpot.create(address: "Grande Pointe Aux Piments", fishing_activity: fishing_activity.sample,
                  latitude: -20.065241259435236, longitude: 57.51892066062756)
FishingSpot.create(address: "Trou Aux Biches", fishing_activity: fishing_activity.sample,
                  latitude: -20.034985103251014, longitude: 57.544558646352534)
FishingSpot.create(address: "Pointe Aux Cannoniers", fishing_activity: fishing_activity.sample,
                  latitude: -20.003333954728372, longitude: 57.55295275200999)
FishingSpot.create(address: "Grand Baie", fishing_activity: fishing_activity.sample,
                  latitude: -20.00467121798037, longitude: 57.57988171204508)
FishingSpot.create(address: "Pereybere", fishing_activity: fishing_activity.sample,
                  latitude: -20.001203140863623, longitude: 57.58039669593043)
FishingSpot.create(address: "Cap Malheureux", fishing_activity: fishing_activity.sample,
                  latitude: -19.98503287303906, longitude: 57.61820212104525)
FishingSpot.create(address: "Melville", fishing_activity: fishing_activity.sample,
                  latitude: -20.00083020594575, longitude: 57.65744189842974)
FishingSpot.create(address: "Poudre D'or", fishing_activity: fishing_activity.sample,
                  latitude: -20.060780035660127, longitude: 57.68552430068679)
FishingSpot.create(address: "Belle Mare", fishing_activity: fishing_activity.sample,
                  latitude: -20.197216554668163, longitude: 57.78011021012902)
FishingSpot.create(address: "Trou d'Eau Douce", fishing_activity: fishing_activity.sample,
                  latitude: -20.236426668965027, longitude: 57.80274128146408)
FishingSpot.create(address: "Grand Sable", fishing_activity: fishing_activity.sample,
                  latitude: -20.327788830986474, longitude: 57.77126356354492)
FishingSpot.create(address: "Pavillon Du Grand Port", fishing_activity: fishing_activity.sample,
                  latitude: -20.37508446254399, longitude: 57.721461942216195),
# FishingSpot.create(address: "", fishing_activity: fishing_activity.sample,
#                   latitude: , longitude: )
# FishingSpot.create(address: "", fishing_activity: fishing_activity.sample,
#                   latitude: , longitude: )
# FishingSpot.create(address: "", fishing_activity: fishing_activity.sample,
#                   latitude: , longitude: )
# FishingSpot.create(address: "", fishing_activity: fishing_activity.sample,
#                   latitude: , longitude: )

# FishingSpot.create(address: "16 villa Gaudelet, Paris", fishing_activity: 5,latitude: 48.8648601,  longitude: 2.3798866)
