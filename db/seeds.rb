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

puts 'Seeding Fishing Spots'
fishing_activity = (0..3).to_a

FishingSpot.create(address: "Baie du Tombeau", fishing_activity: fishing_activity.sample,
                  latitude: -20.12301961928354, longitude: 57.49754069432245)
# FishingSpot.create(address: "Balaclava", fishing_activity: fishing_activity.sample,
#                   latitude: -20.086406823463918, longitude: 57.5157741590813)
FishingSpot.create(address: "Pointe Aux Piments", fishing_activity: fishing_activity.sample,
                  latitude: -20.06009516005433, longitude: 57.519974482517796)
FishingSpot.create(address: "Trou Aux Biches", fishing_activity: fishing_activity.sample,
                  latitude: -20.035157332680612, longitude: 57.54495240258001)
FishingSpot.create(address: "Grand Baie", fishing_activity: fishing_activity.sample,
                  latitude: -20.01097799005565 , longitude: 57.58400549458253)
FishingSpot.create(address: "Pereybere", fishing_activity: fishing_activity.sample,
                  latitude: -19.99400914669289, longitude: 57.5890335905668)
FishingSpot.create(address: "Cap Malheureux", fishing_activity: fishing_activity.sample,
                  latitude: -19.9842516531196, longitude: 57.61653176253597)
FishingSpot.create(address: "Grand Gaube", fishing_activity: fishing_activity.sample,
                  latitude: -20.00625689918533, longitude: 57.66654555044761)
FishingSpot.create(address: "Poudre D'or", fishing_activity: fishing_activity.sample,
                  latitude: -20.058061507727956, longitude: 57.68770706382844)
FishingSpot.create(address: "Belle Mare", fishing_activity: fishing_activity.sample,
                  latitude: -20.196354138267452, longitude: 57.77970896107604)
FishingSpot.create(address: "Trou d'Eau Douce", fishing_activity: fishing_activity.sample,
                  latitude: -20.236426668965027, longitude: 57.80274128146408)
FishingSpot.create(address: "Grand Sable", fishing_activity: fishing_activity.sample,
                  latitude: -20.327788830986474, longitude: 57.77126356354492)
FishingSpot.create(address: "Pavillon Du Grand Port", fishing_activity: fishing_activity.sample,
                  latitude: -20.37508446254399, longitude: 57.721461942216195)
# FishingSpot.create(address: "", fishing_activity: fishing_activity.sample,
#                   latitude: , longitude: )
FishingSpot.create(address: "Grand River South East", fishing_activity: fishing_activity.sample,
                  latitude: -20.290622502987738, longitude: 57.780133373962016)
                  latitude: -20.19574283080837, longitude: 57.7780082501809)
# FishingSpot.create(address: "Trou d'Eau Douce", fishing_activity: fishing_activity.sample,
#                   latitude: -20.2393777502962, longitude: 57.78923959207842)
# FishingSpot.create(address: "Grand River South East", fishing_activity: fishing_activity.sample,
#                   latitude: -20.291693824791466, longitude: 57.78358418662228)
FishingSpot.create(address: "Vieux Grand Port", fishing_activity: fishing_activity.sample,
                  latitude: -20.37680233725814, longitude: 57.71973966452046)
FishingSpot.create(address: "Mahebourg", fishing_activity: fishing_activity.sample,
                  latitude: -20.40227388434505, longitude: 57.7057977620633)
# FishingSpot.create(address: "Blue Bay", fishing_activity: fishing_activity.sample,
#                   latitude: -20.44280467259695, longitude: 57.721062603608146)
# FishingSpot.create(address: "Souillac", fishing_activity: fishing_activity.sample,
#                   latitude: -20.521841782588055, longitude:57.523042677834184)
FishingSpot.create(address: "Beau Champ", fishing_activity: fishing_activity.sample,
                  latitude: -20.508605920553805, longitude: 57.44021663810034)
# FishingSpot.create(address: "Bel Ombre", fishing_activity: fishing_activity.sample,
#                   latitude: -20.504274749676924, longitude: 57.3985088456495)
FishingSpot.create(address: "Baie du Cap", fishing_activity: fishing_activity.sample,
                  latitude: -20.492478630940113, longitude: 57.377252880258595)
# FishingSpot.create(address: "Le Monde", fishing_activity: fishing_activity.sample,
#                   latitude: -20.44295737954863, longitude: 57.32258376194565)
FishingSpot.create(address: "La Gaulette", fishing_activity: fishing_activity.sample,
                  latitude: -20.428766138870742, longitude: 57.35801400827282)
FishingSpot.create(address: "Grande Case Noyale", fishing_activity: fishing_activity.sample,
                  latitude: -20.411444373101432, longitude: 57.36672074707505)
FishingSpot.create(address: "La Preneuse", fishing_activity: fishing_activity.sample,
                  latitude: -20.354190227661945, longitude: 57.36104882926688)
FishingSpot.create(address: "Tamarin", fishing_activity: fishing_activity.sample,
                  latitude: -20.330790759270215, longitude: 57.37119490350943)
FishingSpot.create(address: "Flic en Flac", fishing_activity: fishing_activity.sample,
                  latitude: -20.282495863662803, longitude: 57.36450822389355)
# FishingSpot.create(address: "Albion", fishing_activity: fishing_activity.sample,
#                   latitude: -20.206633888874237, longitude:57.40520221168953)
FishingSpot.create(address: "Pointe aux Sables", fishing_activity: fishing_activity.sample,
                  latitude: -20.16994388037365, longitude: 57.451395813460294)
# FishingSpot.create(address: "", fishing_activity: fishing_activity.sample,
#                   latitude: , longitude: )
# FishingSpot.create(address: "16 villa Gaudelet, Paris", fishing_activity: 5,latitude: 48.8648601,  longitude: 2.3798866)

puts "Seeding of Fishing Spots done !"
