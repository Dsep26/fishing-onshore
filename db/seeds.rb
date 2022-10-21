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

FishingSpot.create(address: "Baie du Tombeau", fishing_activity: fishing_activity.sample,
                  latitude: -20.13444838250334, longitude: 57.49730623579131)
FishingSpot.create(address: "Balaclava", fishing_activity: fishing_activity.sample,
                  latitude: -20.083338086924297, longitude: 57.51248900733028)
FishingSpot.create(address: "Pointe Aux Piments", fishing_activity: fishing_activity.sample,
                  latitude: -20.06116877289532, longitude: 57.518972688632736)
FishingSpot.create(address: "Trou Aux Biches", fishing_activity: fishing_activity.sample,
                  latitude: -20.029464159960508, longitude: 57.54596801240156)
FishingSpot.create(address: "Pointe Aux Cannoniers", fishing_activity: fishing_activity.sample,
                  latitude: -20.003657100036815, longitude: 57.56171646941936)
FishingSpot.create(address: "Grand Baie", fishing_activity: fishing_activity.sample,
                  latitude: -20.008934749850624 , longitude: 57.57869837034905)
FishingSpot.create(address: "Pereybere", fishing_activity: fishing_activity.sample,
                  latitude: -19.993949902702887, longitude: 57.588962401973866)
FishingSpot.create(address: "Cap Malheureux", fishing_activity: fishing_activity.sample,
                  latitude: -19.982275634782855, longitude: 57.611296576891135)
FishingSpot.create(address: "Grand Gaube", fishing_activity: fishing_activity.sample,
                  latitude: -20.007989610622875, longitude: 57.677556220962586)
FishingSpot.create(address: "Poudre D'or", fishing_activity: fishing_activity.sample,
                  latitude: -20.071796374950885, longitude: 57.6922570071525)
FishingSpot.create(address: "Belle Mare", fishing_activity: fishing_activity.sample,
                  latitude: -20.196354138267452, longitude: 57.77970896107604)
FishingSpot.create(address: "Trou d'Eau Douce", fishing_activity: fishing_activity.sample,
                  latitude: -20.239602852572407, longitude: 57.79206383710844)
FishingSpot.create(address: "Grand River South East", fishing_activity: fishing_activity.sample,
                  latitude: -20.290622502987738, longitude: 57.780133373962016)
FishingSpot.create(address: "Vieux Grand Port", fishing_activity: fishing_activity.sample,
                  latitude: -20.375605548760085, longitude: 57.728052431769534)
FishingSpot.create(address: "Mahebourg", fishing_activity: fishing_activity.sample,
                  latitude: -20.401484286169943, longitude: 57.70320491481176)
# FishingSpot.create(address: "", fishing_activity: fishing_activity.sample,
#                   latitude: , longitude: )
# FishingSpot.create(address: "", fishing_activity: fishing_activity.sample,
#                   latitude: , longitude: )
# FishingSpot.create(address: "", fishing_activity: fishing_activity.sample,
#                   latitude: , longitude: )

# FishingSpot.create(address: "16 villa Gaudelet, Paris", fishing_activity: 5,latitude: 48.8648601,  longitude: 2.3798866)

puts "Seeding done !"
