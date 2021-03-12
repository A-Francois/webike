# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"

file1 = URI.open('https://www.ciel.fr/wp-content/uploads/2015/11/port-de-Brest.jpg')
file2 = URI.open('https://www.terre.tv/wp-content/uploads/2020/02/Menton-%C2%A9-iStock.jpg')
file3 = URI.open('https://d1bvpoagx8hqbg.cloudfront.net/originals/erasmus-experience-lille-france-veronika-132dbe92a3544efead4016df9b79cc1e.jpg')
file4 = URI.open('https://c2.staticflickr.com/8/7422/12943457434_744c2c9869_b.jpg')
file5 = URI.open('https://www.terre.tv/wp-content/uploads/2020/01/Narbonne-%C2%A9-iStock.jpg')
file6 = URI.open('https://t-cf.bstatic.com/images/hotel/max1280x900/248/248749579.jpg')
file7 = URI.open('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/98/b5/60/camping-du-garlaban.jpg?w=900&h=-1&s=1')
file8 = URI.open('https://www.gite-picardie.com/wp-content/uploads/2020/09/location-toursime-baiedesomme-605x465.jpg')
file9 = URI.open('https://t-cf.bstatic.com/images/hotel/max1280x900/241/241219374.jpg')
file10 = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/18/73/43/64/abbaye-des-capucins-spa.jpg')
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Ride.destroy_all
User.destroy_all
Hotel.destroy_all

puts "creating user..."
user_1 = User.create!(
  firstname: "Paul",
  lastname: "Jack",
  email: "pauljack@gmail.com",
  password: "azerty",)

puts "creating rides..."
puts "First one..."
ride_1 = Ride.new(
  title: 'Ride along the Atlantic',
  city_departure: 'Biarritz',
  city_arrival: 'Brest',
  departure_date:  '05/08/2021',
  arrival_date:  '10/08/2021' ,
  ride_description: "Let's ride along the Majestuous Atlantic Ocean discovering the most amazing landscapes.",
)
ride_1.photo.attach(io: file1, filename: 'ride1.png', content_type: 'image/png')
ride_1.user = user_1
ride_1.save!
puts "Second one..."
ride_2 = Ride.new(
  title: 'Mediterranean Run',
  city_departure: 'Perpignan',
  city_arrival: 'Menton',
  departure_date:  '07/04/2021' ,
  arrival_date:  '10/04/2021' ,
  ride_description: "I would make a sportive run under the mediterranean sun, camaradery in rendez-vous!",
)
ride_2.photo.attach(io: file2, filename: 'ride2.png', content_type: 'image/png')
ride_2.user = user_1
ride_2.save!
puts "Third one..."
ride_3 = Ride.new(
  title: 'Road to the North',
  city_departure: 'Paris',
  city_arrival: 'Lille',
  departure_date: '24/06/2021 ',
  arrival_date:  '25/06/2021' ,
  ride_description: 'A family trip, chilling on the road to the beautiful city of Lille, everyone invited:)',
)
ride_3.photo.attach(io: file3, filename: 'ride3.png', content_type: 'image/png')
ride_3.user = user_1
ride_3.save!
puts "Fourth one..."
ride_4 = Ride.new(
  title: 'Transalpine',
  city_departure: 'Chambery',
  city_arrival: 'Turin',
  departure_date:  '31/07/2021' ,
  arrival_date:  '03/08/2021' ,
  ride_description: "Ride across the Alps from France to Italy!(Experimented level highly recommended)",
)
ride_4.photo.attach(io: file4, filename: 'ride4.png', content_type: 'image/png')
ride_4.user = user_1
ride_4.save!
puts "Last one..."
ride_5 = Ride.new(
  title: 'Across Occitania',
  city_departure: 'Bordeaux',
  city_arrival: 'Narbonne',
  departure_date:  '15/07/2021' ,
  arrival_date:  '20/07/2021' ,
  ride_description: "You want discover Occitania ? Historical monuments and regional cuisine in the program!",
)
ride_5.photo.attach(io: file5, filename: 'ride5.png', content_type: 'image/png')
ride_5.user = user_1
ride_5.save!
puts "Rides created !"
puts "Creating hostels..."
puts "First One..."
hotel_1 = Hotel.new(
  name: "Hôtel Saint Nicolas",
  city: "La Rochelle",
  hotel_description: "Situated in the lively Saint Nicolas district in La Rochelle, this hotel is surrounded by antique dealers, bars and cafés. It offers free Wi-Fi and a conservatory with large sofas and tropical plants.",
  price: "88"
)
hotel_1.photo.attach(io: file6, filename: 'hotel1.png', content_type: 'image/png')
hotel_1.save!
puts "Second One..."
hotel_2 = Hotel.new(
  name: "Camping du Garlaban",
  city: "Marseille",
  hotel_description: "L​e Camping est idéalement situé pour visiter la Provence à votre rythme. Partez à la découverte de Marseille, du Parc National des Calanques ou du massif du Garlaban.",
  price: "56"
)
hotel_2.photo.attach(io: file7, filename: 'hotel2.png', content_type: 'image/png')
hotel_2.save!
puts "Third One..."
hotel_3 = Hotel.new(
  name: "Le Gîte Baie de Somme",
  city: "Saint-Valery-sur-Somme",
  hotel_description: "Le gîte est une maison indépendante à colombages de 262 m² de superficie. Il est aménagé pour 8 personnes maximum, avec une terrasse et un jardin de 76 m².",
  price: "800"
)
hotel_3.photo.attach(io: file8, filename: 'hotel3.png', content_type: 'image/png')
hotel_3.save!
puts "Fourth One..."
hotel_4 = Hotel.new(
  name: "CHALET LA TUVIERE BIKE INN",
  city: "Saint-Jean-de-Maurienne",
  hotel_description: "Installé à Jarrier, le CHALET LA TUVIERE BIKE INN dispose d'un bar, d’un salon commun et d’un restaurant. Il propose également un balcon commun et un local à skis.",
  price: "64"
)
hotel_4.photo.attach(io: file9, filename: 'hotel4.png', content_type: 'image/png')
hotel_4.save!
puts "Last One..."
hotel_5 = Hotel.new(
  name: "Abbaye des Capucins Hotel Spa & Resort",
  city: "Montauban",
  hotel_description: "In the very heart of South West, this old couvent of the 17th century located on the river side and 2 minutes walking distance from the ciy centre proposes 85 rooms, a brasserie is opened every day at lunch & dinner time.",
  price: "90"
)
hotel_5.photo.attach(io: file10, filename: 'hotel5.png', content_type: 'image/png')
hotel_5.save!
puts "All the seed has been (finally) created !"
