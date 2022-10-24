# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning up database..."
FishingSpot.destroy_all
puts "Database cleaned"

puts 'Seeding Fishing Spots'
fishing_activity = (1..3).to_a

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590672/fishing%20onshore/fishingspot%20photo/baie_du_tombeau_vry5gc.jpg")
fishingspot = FishingSpot.new(address: "Baie du Tombeau", fishing_activity: fishing_activity.sample,
                  latitude: -20.12301961928354, longitude: 57.49754069432245)
fishingspot.photo.attach(io: file, filename: "baie_du_tombeau_vry5gc", content_type: "image/jpg")
fishingspot.save

# fishingspot = FishingSpot.new(address: "Balaclava", fishing_activity: fishing_activity.sample,
#                   latitude: -20.086406823463918, longitude: 57.5157741590813)

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590674/fishing%20onshore/fishingspot%20photo/Pointe_Aux_Piments_olj0uc.jpg")
fishingspot = FishingSpot.new(address: "Pointe Aux Piments", fishing_activity: fishing_activity.sample,
                  latitude: -20.06009516005433, longitude: 57.519974482517796)
fishingspot.photo.attach(io: file, filename: "Pointe_Aux_Piments_olj0u", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590674/fishing%20onshore/fishingspot%20photo/Trou_Aux_Biches_n5sycm.jpg")
fishingspot = FishingSpot.new(address: "Trou Aux Biches", fishing_activity: fishing_activity.sample,
                  latitude: -20.035157332680612, longitude: 57.54495240258001)
fishingspot.photo.attach(io: file, filename: "Trou_Aux_Biches_n5sycm", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666594017/fishing%20onshore/fishingspot%20photo/grand_baie_lxrawn.jpg")
fishingspot = FishingSpot.new(address: "Grand Baie", fishing_activity: fishing_activity.sample,
                  latitude: -20.01097799005565 , longitude: 57.58400549458253)
fishingspot.photo.attach(io: file, filename: "grand_baie_lxrawn", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590673/fishing%20onshore/fishingspot%20photo/pereybere_tvhuer.jpg")
fishingspot = FishingSpot.new(address: "Pereybere", fishing_activity: fishing_activity.sample,
                  latitude: -19.99400914669289, longitude: 57.5890335905668)
fishingspot.photo.attach(io: file, filename: "pereybere_tvhuer", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590672/fishing%20onshore/fishingspot%20photo/Cap_Malheureux_hz5tsn.jpg")
fishingspot = FishingSpot.new(address: "Cap Malheureux", fishing_activity: fishing_activity.sample,
                  latitude: -19.9842516531196, longitude: 57.61653176253597)
fishingspot.photo.attach(io: file, filename: "Cap_Malheureux_hz5tsn", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590672/fishing%20onshore/fishingspot%20photo/Grand_Gaube_y2zyck.jpg")
fishingspot = FishingSpot.new(address: "Grand Gaube", fishing_activity: fishing_activity.sample,
                  latitude: -20.00625689918533, longitude: 57.66654555044761)
fishingspot.photo.attach(io: file, filename: "Grand_Gaube_y2zyck", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590673/fishing%20onshore/fishingspot%20photo/poudre_d_or_jpeg_jobwnl.jpg")
fishingspot = FishingSpot.new(address: "Poudre D'or", fishing_activity: fishing_activity.sample,
                  latitude: -20.058061507727956, longitude: 57.68770706382844)
fishingspot.photo.attach(io: file, filename: "poudre_d_or_jpeg_jobwnl", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590672/fishing%20onshore/fishingspot%20photo/Belle_Mare_ggudyv.jpg")
fishingspot = FishingSpot.new(address: "Belle Mare", fishing_activity: fishing_activity.sample,
                  latitude: -20.19574283080837, longitude: 57.7780082501809)
fishingspot.photo.attach(io: file, filename: "Belle_Mare_ggudyv", content_type: "image/jpg")
fishingspot.save

# fishingspot = FishingSpot.new(address: "Trou d'Eau Douce", fishing_activity: fishing_activity.sample,
#                   latitude: -20.2393777502962, longitude: 57.78923959207842)
# fishingspot = FishingSpot.new(address: "Grand River South East", fishing_activity: fishing_activity.sample,
#                   latitude: -20.291693824791466, longitude: 57.78358418662228)

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590674/fishing%20onshore/fishingspot%20photo/Vieux_Grand_Port_n9wehq.jpg")
fishingspot = FishingSpot.new(address: "Vieux Grand Port", fishing_activity: fishing_activity.sample,
                  latitude: -20.37680233725814, longitude: 57.71973966452046)
fishingspot.photo.attach(io: file, filename: "Vieux_Grand_Port_n9wehq", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590673/fishing%20onshore/fishingspot%20photo/Mahebourg_ejqyj9.jpg")
fishingspot = FishingSpot.new(address: "Mahebourg", fishing_activity: fishing_activity.sample,
                  latitude: -20.40227388434505, longitude: 57.7057977620633)
fishingspot.photo.attach(io: file, filename: "Mahebourg_ejqyj9", content_type: "image/jpg")
fishingspot.save

# fishingspot = FishingSpot.new(address: "Blue Bay", fishing_activity: fishing_activity.sample,
#                   latitude: -20.44280467259695, longitude: 57.721062603608146)
# fishingspot = FishingSpot.new(address: "Souillac", fishing_activity: fishing_activity.sample,
#                   latitude: -20.521841782588055, longitude:57.523042677834184)

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590672/fishing%20onshore/fishingspot%20photo/Beau_Champ_k7xyrm.jpg")
fishingspot = FishingSpot.new(address: "Beau Champ", fishing_activity: fishing_activity.sample,
                  latitude: -20.508605920553805, longitude: 57.44021663810034)
fishingspot.photo.attach(io: file, filename: "Beau_Champ_k7xyrm", content_type: "image/jpg")
fishingspot.save

# fishingspot = FishingSpot.new(address: "Bel Ombre", fishing_activity: fishing_activity.sample,
#                   latitude: -20.504274749676924, longitude: 57.3985088456495)

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590672/fishing%20onshore/fishingspot%20photo/Baie_du_cap_dytefn.jpg")
fishingspot = FishingSpot.new(address: "Baie du Cap", fishing_activity: fishing_activity.sample,
                  latitude: -20.492478630940113, longitude: 57.377252880258595)
fishingspot.photo.attach(io: file, filename: "Baie_du_cap_dytefn", content_type: "image/jpg")
fishingspot.save

# fishingspot = FishingSpot.new(address: "Le Monde", fishing_activity: fishing_activity.sample,
#                   latitude: -20.44295737954863, longitude: 57.32258376194565)

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590673/fishing%20onshore/fishingspot%20photo/La_Gaulette_qxiubv.jpg")
fishingspot = FishingSpot.new(address: "La Gaulette", fishing_activity: fishing_activity.sample,
                  latitude: -20.428766138870742, longitude: 57.35801400827282)
fishingspot.photo.attach(io: file, filename: "La_Gaulette_qxiubv", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590673/fishing%20onshore/fishingspot%20photo/Grande_Case_Noyale_pcodxs.jpg")
fishingspot = FishingSpot.new(address: "Grande Case Noyale", fishing_activity: fishing_activity.sample,
                  latitude: -20.411444373101432, longitude: 57.36672074707505)
fishingspot.photo.attach(io: file, filename: "Grande_Case_Noyale_pcodxs", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590673/fishing%20onshore/fishingspot%20photo/La_Preneuse_udojrq.jpg")
fishingspot = FishingSpot.new(address: "La Preneuse", fishing_activity: fishing_activity.sample,
                  latitude: -20.354190227661945, longitude: 57.36104882926688)
fishingspot.photo.attach(io: file, filename: "La_Preneuse_udojrq", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590673/fishing%20onshore/fishingspot%20photo/Tamarin_nlbj3z.jpg")
fishingspot = FishingSpot.new(address: "Tamarin", fishing_activity: fishing_activity.sample,
                  latitude: -20.330790759270215, longitude: 57.37119490350943)
fishingspot.photo.attach(io: file, filename: "Tamarin_nlbj3z", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590672/fishing%20onshore/fishingspot%20photo/flic_en_flac_ccj4rp.jpg")
fishingspot = FishingSpot.new(address: "Flic en Flac", fishing_activity: fishing_activity.sample,
                  latitude: -20.282495863662803, longitude: 57.36450822389355)
fishingspot.photo.attach(io: file, filename: "flic_en_flac_ccj4rp", content_type: "image/jpg")
fishingspot.save

# fishingspot = FishingSpot.new(address: "Albion", fishing_activity: fishing_activity.sample,
#                   latitude: -20.206633888874237, longitude:57.40520221168953)

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590674/fishing%20onshore/fishingspot%20photo/Pointe_aux_Sables_jqna9i.jpg")
fishingspot = FishingSpot.new(address: "Pointe aux Sables", fishing_activity: fishing_activity.sample,
                  latitude: -20.16994388037365, longitude: 57.451395813460294)
fishingspot.photo.attach(io: file, filename: "Pointe_aux_Sables_jqna9i", content_type: "image/jpg")
fishingspot.save

# fishingspot = FishingSpot.new(address: "", fishing_activity: fishing_activity.sample,
#                   latitude: , longitude: )
# fishingspot = FishingSpot.new(address: "16 villa Gaudelet, Paris", fishing_activity: 5,latitude: 48.8648601,  longitude: 2.3798866)

puts "Seeding of Fishing Spots done !"
