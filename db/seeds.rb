# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Booking.destroy_all
Car.destroy_all
User.destroy_all
user1 = User.create!(
  full_name: "Karim Soussi",
  email: "karim@lewagon.com",
  password: "123456",
  photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/qqtccckpyj555oibt676.jpg")
user2 = User.create!(
  full_name: "Felipe De Alba",
  email: "felipe@lewagon.com",
  password: "123456",
  photo: "https://avatars3.githubusercontent.com/u/54073875?v=4")
user3 = User.create!(
  full_name: "Bitna Kim",
  email: "bitna@lewagon.com",
  password: "123456",
  photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/zizjr3r1g3d2b1vlp1iy.jpg")
user4 = User.create!(
  full_name: "Fanny Rojon",
  email: "fanny@lewagon.com",
  password: "123456",
  photo: "https://avatars2.githubusercontent.com/u/54022229?v=4")

car1 = Car.create!(
  brand: "BMW",
  car_model: "7 Series",
  body_type: "Sedan",
  seats: 4,
  plate_number: "3650GYG",
  combustion: "Petrol",
  milage: 50_000,
  transmission: "Automatic",
  price_per_hour: 200,
  price_per_day: 3_600,
  location: "calle de ramírez de prado, 5, 28045 madrid",
  accessories: "Air Conditioner, Anti Lock Braking System, Voice Control",
  year: 2017,
  description: "The BMW 7 Series has 1 Diesel Engine and 2 Petrol Engine on offer. The Diesel engine is 2993 cc while the Petrol engine is 2998 cc and 6592 cc. It is available with the Automatic transmission. Depending upon the variant and fuel type the 7 Series has a mileage of 7.96 to 39.53 kmpl. The 7 Series is a 4 seater Sedan and has a length of 5238mm, width of 2169mm and a wheelbase of 3210mm.",
  user: user1,
  photo: "https://stat.overdrive.in/wp-content/odgallery/2019/07/53021_2019_BMW_7-SERIES_1.jpg"
  # photo: "https://cdn2.rcstatic.com/images/car_images/web/bmw/7_series_lrg.jpg"
  )

car2 = Car.create!(
  brand: "Porsche",
  car_model: "911",
  body_type: "Convertible",
  seats: 2,
  plate_number: "5950BRM",
  combustion: "Petrol",
  milage: 30_000,
  transmission: "Manual",
  price_per_hour: 350,
  price_per_day: 6_300,
  location: "Calle de Serrano, 47, 28001 Madrid",
  accessories: "Air Conditioner, Automatic Climate Control, Multi-function Steering Wheel",
  year: 2018,
  description: "The Porsche 911 has 1 Petrol Engine on offer. The Petrol engine is 2981 cc. It is available with the Manual transmission. Depending upon the variant and fuel type the 911 has a mileage of 9.0 kmpl. The 911 is a 2 seater Convertible and has a length of 4519mm, width of 1852mm and a wheelbase of 2450mm.",
  user: user2,
  photo: "https://4d5f5de51693cfc684da-cb2084ba1892d6fbfdf4063f34f87a51.ssl.cf1.rackcdn.com/WP0AB2A96KS114955/4d7b33ee083629541d161af0239ff368.jpg"
  # photo: "https://cdn2.rcstatic.com/images/car_images/web/mercedes/c_class_lrg.jpg"
  )
car3 = Car.create!(
  brand: "Rolls Royce",
  car_model: "Phantom",
  body_type: "Sedan",
  seats: 5,
  plate_number: "9050CIM",
  combustion: "Petrol",
  milage: 20_000,
  transmission: "Automatic",
  price_per_hour: 320,
  price_per_day: 5_760,
  location: "Calle del General Arrando, 18, 28010 Madrid",
  accessories: "Air Conditioner, Power Steering",
  year: 2019,
  description: "The Rolls Royce Phantom has 1 Petrol Engine on offer. The Petrol engine is 6749 cc. It is available with the Automatic transmission. Depending upon the variant and fuel type the Rolls Royce Phantom has a mileage of 9.8 kmpl. The Rolls Royce Phantom is a 5 seater Sedan and has a length of 6092mm, width of 1990mm and a wheelbase of 3820mm.",
  user: user3,
  photo: "http://cdn-ds.com/stock/2019-Rolls-Royce-Phantom--Beverly-Hills-CA/seo/VAMP16966-SCA687S55KU104698/sz_211706/ba0ec6ad6f24b02a136eff645d9e095f.jpg"
  # photo: "https://cdn2.rcstatic.com/images/car_images/new_images/opel/cascada_lrg.jpg"
  )

car4 = Car.create!(
  brand: "Maserati",
  car_model: "Quattroporte",
  body_type: "Sedan",
  seats: 2,
  plate_number: "8050BIM",
  combustion: "Petrol",
  milage: 30_000,
  transmission: "Automatic",
  price_per_hour: 340,
  price_per_day: 6_120,
  location: "Calle de Alonso Cano, 90, 28003 Madrid",
  accessories: "Air Conditioner, Automatic Climate Control, Multi-function Steering Wheel",
  year: 2018,
  description: "The Maserati Quattroporte has 2 Diesel Engine and 1 Petrol Engine on offer. The Diesel engine is 2987 cc and 2999 cc while the Petrol engine is 3799 cc. It is available with the Automatic transmission. Depending upon the variant and fuel type the Quattroporte has a mileage of 11.76 to 19.23 kmpl. The Quattroporte is a 5 seater Sedan and has a length of 5262mm, width of 2128mm and a wheelbase of 3171mm.",
  user: user4,
  photo: "https://upload.wikimedia.org/wikipedia/commons/d/d1/2015_Maserati_Quattroporte_DV6_Automatic_3.0_Front.jpg"
  # photo: "https://cdn2.rcstatic.com/images/car_images/web/fiat/500_convertible_lrg.jpg"
  )

car5 = Car.create!(
  brand: "Lamborghini",
  car_model: "Aventador LP 700-4",
  body_type: "Coupe ",
  seats: 2,
  plate_number: "7550CIZ",
  combustion: "Petrol",
  milage: 40_000,
  transmission: "Automatic",
  price_per_hour: 400,
  price_per_day: 7000,
  location: "Villaverde Alto Madrid",
  accessories: "Air Conditioner, Automatic Climate Control, Multi-function Steering Wheel",
  year: 2015,
  description: "The Lamborghini Aventador LP 700-4 is every inch a Lamborghini, from its sharply sculpted front end to the extremely low roofline and the dramatic rear diffuser.",
  user: user1,
  photo: "https://cdn.hiconsumption.com/wp-content/uploads/2012/05/Lamborghini-Aventador-LP-700-4-by-Wheelsandmore-0.jpg"

  )

car6 = Car.create!(
  brand: "Ferrari",
  car_model: "F12berlinetta",
  body_type: "Coupe",
  seats: 2,
  plate_number: "3560BBZ",
  combustion: "Petrol",
  milage: 35_000,
  transmission: "Automatic",
  price_per_hour: 370,
  price_per_day: 6500,
  location: " 28042 Madrid",
  accessories: "Air Conditioner, Automatic Climate Control, Multi-function Steering Wheel",
  year: 2017,
  description: "F12berlinetta is a front mid-engine, rear-wheel-drive grand tourer produced by Italian automobile manufacturer Ferrari",
  user: user2,
  photo: "https://i.blogs.es/748ce4/ferrari-f12-berlinetta-2p/450_1000.jpg"

  )

car7 = Car.create!(
  brand: "Bugatti",
  car_model: "Chiron",
  body_type: "coupe",
  seats: 2,
  plate_number: "4668CCZ",
  combustion: "Petrol",
  milage: 43_000,
  transmission: "Automatic",
  price_per_hour: 430,
  price_per_day: 7200,
  location: "Leganés Madrid",
  accessories: "Air Conditioner, Automatic Climate Control, Multi-function Steering Wheel",
  year: 2017,
  description: "ugatti Chiron is a mid-engine two-seater sports car developed and manufactured in Molsheim",
  user: user3,
  photo: "https://fotografias.lasexta.com/clipping/cmsimages02/2018/02/27/DFCC4F6E-B5E4-48BD-A3D6-AFBC4D14BD1A/58.jpg"

  )

car8 = Car.create!(
  brand: "Mercedes",
  car_model: "Maybach 6",
  body_type: "Coupe",
  seats: 2,
  plate_number: "6700CBZ",
  combustion: "Petrol",
  milage: 45_000,
  transmission: "Automatic",
  price_per_hour: 380,
  price_per_day: 6900,
  location: "28005 Madrid",
  accessories: "Air Conditioner, Automatic Climate Control, Multi-function Steering Wheel",
  year: 2016,
  description: "Mercedes-Maybach stands for prestigious vehicles that meet special customer requirements in terms of luxury, comfort and exclusivity.",
  user: user4,
  photo: "https://s.aolcdn.com/dims-global/dims3/GLOB/legacy_thumbnail/350x197/quality/95/https://s.blogcdn.com/slideshows/images/slides/469/336/1/S4693361/slug/l/hss-storage-midas-37d8edeac3b968eaf30d32a095ead101-205017901-1.jpg"

  )

car9 = Car.create!(
  brand: "Bugatti",
  car_model: "La Voiture Noire",
  body_type: "Coupe",
  seats: 2,
  plate_number: "3448GBO",
  combustion: "Petrol",
  milage: 49_000,
  transmission: "Automatic",
  price_per_hour: 500,
  price_per_day: 7500,
  location: "28035 Madrid",
  accessories: "Air Conditioner, Automatic Climate Control, Multi-function Steering Wheel",
  year: 2013,
  description: "The car has a hand-built body made from carbon fibre designed by Bugatti designer Etienne Salomé",
  user: user2,
  photo: "https://cdn.carbuzz.com/gallery-images/840x560/557000/200/557227.jpg"

  )

car10 = Car.create!(
  brand: "Aston Martin",
  car_model: "Lagonda Taraf",
  body_type: "Sedan",
  seats: 4,
  plate_number: "fcz3677",
  combustion: "Petrol",
  milage: 36_000,
  transmission: "Automatic",
  price_per_hour: 350,
  price_per_day: 6700,
  location: "28220 Majadahonda, Madrid",
  accessories: "Air Conditioner, Automatic Climate Control, Multi-function Steering Wheel",
  year: 2018,
  description: "Lagonda Taraf is a four-door full-sized luxury car manufactured by Lagonda",
  user: user3,
  photo: "https://estaticos1.larazon.es/documents/10165/0/755x500/0c37/755d425/none/10810/KEMR/image_content_3530448_20150825103517.jpg"

  )
