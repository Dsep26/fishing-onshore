# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "Cleaning up database..."
Reply.destroy_all
Discussion.destroy_all
FishingSpot.destroy_all
Hint.destroy_all
puts "Database cleaned"

puts "seeding hints"

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666607616/fishing%20onshore/fishing%20eqp/SINGLE_DOUBLE_TREBLE_HOOKS.jpeg_vgxoo8.png")
hint = Hint.new(equipment: "Single,Double,Trebble Hooks", description: "Treble saltwater fishing hooks work by snagging the fish when it hits a bait. Treble hooks are sized the same way as other hooks, but it usually takes a smaller treble hook to catch the same size fish as a circle or J-hook. Most plugs use treble hooks so that when the fish realizes it has eaten a lure instead of a real fish, it is already hooked.")
hint.photo.attach(io: file, filename: "SINGLE_DOUBLE_TREBLE_HOOKS.jpeg_vgxoo8", content_type: "image/png")
hint.save!

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666767200/fishing%20onshore/fishing%20eqp/hook_ivkzaz.jpg")
hint = Hint.new(equipment: "Circle Hook", description: "Circle hooks are mostly used with live or cut fishing bait because the shape of the hook keeps it from becoming lodged in the fish’s gut. As a result, circle saltwater fishing hooks are now considered the best saltwater fishing hooks for catch-and-release fishing.")
hint.photo.attach(io: file, filename: "circle_hook_nlvgv3", content_type: "image/png")
hint.save!

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666607616/fishing%20onshore/fishing%20eqp/Telescoping-Fishing-Rod.jpeg_afc4kv.jpg")
hint = Hint.new(equipment: "Telescoping Fishing Rod", description: "The best advantage of this fishing rod is its hassle-free carrying. The rod used to go smaller up to the minimal length. Users can expand the length according to need. ")
hint.photo.attach(io: file, filename: "Telescoping-Fishing-Rod.jpeg_afc4kv", content_type: "image/jpg")
hint.save!

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666607616/fishing%20onshore/fishing%20eqp/Spincast-Casting-Rod.jpeg_v3apty.jpg")
hint = Hint.new(equipment: "Spincast Rod", description: "Casting fishing rods well suited for beginners or children due to ease of use and overall simplicity. The rod features a push-catch system for the discharging line.")
hint.photo.attach(io: file, filename: "Spincast-Casting-Rod.jpeg_v3apty", content_type: "image/jpg")
hint.save!

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666607616/fishing%20onshore/fishing%20eqp/Fly-Fishing-Rod.jpeg_m3ddbe.jpg")
hint = Hint.new(equipment: "Flying Fishining Rod", description: "The structure of the rod is quite similar to other casting rods but has some additional features and advantages. Spin rods allow its users to hold it with the dominant hand for more stability and more power. The reel lies on the bottom end of the rod when casting and reeling in. Operating the rod is relatively easy. Considering the features, it best suits for fishing in lakes, rivers, or boats. These rods and reels come in all sizes and are suitable for nearly every fishing situation.")
hint.photo.attach(io: file, filename: "Fly-Fishing-Rod.jpeg_m3ddbe", content_type: "image/jpg")
hint.save!

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666607616/fishing%20onshore/fishing%20eqp/monofilament-fishing-line.jpeg_xdlil3.jpg")
hint = Hint.new(equipment: "Monofilament Fishing Line", description: "Monofilament is the most popular type of fishing line and comes in a great variety of strengths and colors. Mono is less expensive than other lines, stretches to absorb shocks, is abrasion resistant, and uniformly round in cross section, which helps keep it neat on the spool. Monofilament is easy to tie knots in, but can suffer from “memory” where it loops in the shape of the spool. Mono comes in several shades, but clear and blue are popular because they disappear underwater and are very difficult for a fish to see.")
hint.photo.attach(io: file, filename: "monofilament-fishing-line.jpeg_xdlil3", content_type: "image/jpg")
hint.save!

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666607616/fishing%20onshore/fishing%20eqp/bait_leech.jpeg_b3qyve.jpg")
hint = Hint.new(equipment: "Bait Leech", description: "Leeches are excellent live freshwater fishing bait for walleye and northern pike and are readily available from bait shops. Leeches should be hooked through the sucker in the tail. Leeches have suckers at both ends. But the tail sucker disk is larger than the head disk")
hint.photo.attach(io: file, filename: "bait_leech.jpeg_b3qyve", content_type: "image/jpg")
hint.save!

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666607615/fishing%20onshore/fishing%20eqp/bait_grubs_worm.jpeg_nxsccy.jpg")
hint = Hint.new(equipment: "Grubs And Meal Worms", description: "Ideal for pan fish, sunfish and trout, grubs and meal worms are used often as live freshwater bait and are readily available from tackle and bait shops. Use them singly or in multiples.")
hint.photo.attach(io: file, filename: "bait_grubs_worm.jpeg_nxsccy", content_type: "image/jpg")
hint.save!

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666614461/fishing%20onshore/fishing%20eqp/bait_grasshopper_dmofbu.jpg")
hint = Hint.new(equipment: "Insects", description: "Ants, beetles, grasshoppers, crickets and caterpillars are ideal to use as live freshwater fishing bait for catching pan fish, sunfish and trout. Brown trout are especially attracted to ants presented on a fly.")
hint.photo.attach(io: file, filename: "bait_grasshopper_dmofbu", content_type: "image/jpg")
hint.save!

puts "Seeding of Hints done !"

puts 'Seeding Fishing Spots'
fishing_activity = (1..3).to_a

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666761026/fishing%20onshore/correction%20foto/baie_du_tombeau_pizyqh.jpg")
fishingspot = FishingSpot.new(address: "Baie du Tombeau", fishing_activity: fishing_activity.sample,
                  latitude: -20.12301961928354, longitude: 57.49754069432245)
fishingspot.photo.attach(io: file, filename: "baie_du_tombeau_pizyqh", content_type: "image/jpg")
fishingspot.save

# fishingspot = FishingSpot.new(address: "Balaclava", fishing_activity: fishing_activity.sample,
#                   latitude: -20.086406823463918, longitude: 57.5157741590813)

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590674/fishing%20onshore/fishingspot%20photo/Pointe_Aux_Piments_olj0uc.jpg")
fishingspot = FishingSpot.new(address: "Pointe Aux Piments", fishing_activity: fishing_activity.sample,
                  latitude: -20.06009516005433, longitude: 57.519974482517796)
fishingspot.photo.attach(io: file, filename: "Pointe_Aux_Piments_olj0u", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666765183/fishing%20onshore/fishingspot%20photo/Trou_Aux_Biches_n5sycm_shpxmv.jpg")
fishingspot = FishingSpot.new(address: "Trou Aux Biches", fishing_activity: fishing_activity.sample,
                  latitude: -20.035157332680612, longitude: 57.54495240258001)
fishingspot.photo.attach(io: file, filename: "Trou_Aux_Biches_n5sycm_shpxmv", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666594017/fishing%20onshore/fishingspot%20photo/grand_baie_lxrawn.jpg")
fishingspot = FishingSpot.new(address: "Grand Baie", fishing_activity: fishing_activity.sample,
                  latitude: -20.01097799005565 , longitude: 57.58400549458253)
fishingspot.photo.attach(io: file, filename: "grand_baie_lxrawn", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666762502/fishing%20onshore/correction%20foto2/pereybere_v4phdx.jpg")
fishingspot = FishingSpot.new(address: "Pereybere", fishing_activity: fishing_activity.sample,
                  latitude: -19.99400914669289, longitude: 57.5890335905668)
fishingspot.photo.attach(io: file, filename: "pereybere_v4phdx", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666761026/fishing%20onshore/correction%20foto/Cap_Malheureux_eraje5.jpg")
fishingspot = FishingSpot.new(address: "Cap Malheureux", fishing_activity: fishing_activity.sample,
                  latitude: -19.9842516531196, longitude: 57.61653176253597)
fishingspot.photo.attach(io: file, filename: "Cap_Malheureux_eraje5", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666590672/fishing%20onshore/fishingspot%20photo/Grand_Gaube_y2zyck.jpg")
fishingspot = FishingSpot.new(address: "Grand Gaube", fishing_activity: fishing_activity.sample,
                  latitude: -20.00625689918533, longitude: 57.66654555044761)
fishingspot.photo.attach(io: file, filename: "Grand_Gaube_y2zyck", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666764519/fishing%20onshore/correction%20foto/poudredor_n9xcfv.jpg")
fishingspot = FishingSpot.new(address: "Poudre D'or", fishing_activity: fishing_activity.sample,
                  latitude: -20.058061507727956, longitude: 57.68770706382844)
fishingspot.photo.attach(io: file, filename: "poudre_d_or_jpeg_jobwnl_qa0tbl", content_type: "image/jpg")
fishingspot.save

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666761026/fishing%20onshore/correction%20foto/Belle_Mare_obptsq.jpg")
fishingspot = FishingSpot.new(address: "Belle Mare", fishing_activity: fishing_activity.sample,
                  latitude: -20.19574283080837, longitude: 57.7780082501809)
fishingspot.photo.attach(io: file, filename: "Belle_Mare_obptsq", content_type: "image/jpg")
fishingspot.save

# fishingspot = FishingSpot.new(address: "Trou d'Eau Douce", fishing_activity: fishing_activity.sample,
#                   latitude: -20.2393777502962, longitude: 57.78923959207842)
# fishingspot = FishingSpot.new(address: "Grand River South East", fishing_activity: fishing_activity.sample,
#                   latitude: -20.291693824791466, longitude: 57.78358418662228)

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666763953/fishing%20onshore/new%20photo/vgp_bb6uy8.jpg")
fishingspot = FishingSpot.new(address: "Vieux Grand Port", fishing_activity: fishing_activity.sample,
                  latitude: -20.37680233725814, longitude: 57.71973966452046)
fishingspot.photo.attach(io: file, filename: "vgp_bb6uy8", content_type: "image/jpg")
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

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666698157/fishing%20onshore/new%20photo/beauchamp_orfbc4.jpg")
fishingspot = FishingSpot.new(address: "Beau Champ", fishing_activity: fishing_activity.sample,
                  latitude: -20.508605920553805, longitude: 57.44021663810034)
fishingspot.photo.attach(io: file, filename: "beauchamp_orfbc4", content_type: "image/jpg")
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

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666698156/fishing%20onshore/new%20photo/grandcasenoyal_wrek2u.jpg")
fishingspot = FishingSpot.new(address: "Grande Case Noyale", fishing_activity: fishing_activity.sample,
                  latitude: -20.411444373101432, longitude: 57.36672074707505)
fishingspot.photo.attach(io: file, filename: "grandcasenoyal_wrek2u", content_type: "image/jpg")
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

file = URI.open("https://res.cloudinary.com/df3klwao8/image/upload/v1666698157/fishing%20onshore/new%20photo/flic-en-flac-beach_kaqig8.jpg")
fishingspot = FishingSpot.new(address: "Flic en Flac", fishing_activity: fishing_activity.sample,
                  latitude: -20.282495863662803, longitude: 57.36450822389355)
fishingspot.photo.attach(io: file, filename: "flic-en-flac-beach_kaqig8", content_type: "image/jpg")
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
