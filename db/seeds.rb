# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"

file1 = URI.open('https://www.ciel.fr/wp-content/uploads/2015/11/port-de-Brest.jpg')
file2 = URI.open('https://www.terre.tv/wp-content/uploads/2020/02/Menton-%C2%A9-iStock.jpg')
file3 = URI.open('https://d1bvpoagx8hqbg.cloudfront.net/originals/erasmus-experience-lille-france-veronika-132dbe92a3544efead4016df9b79cc1e.jpg')
file4 = URI.open('https://c2.staticflickr.com/8/7422/12943457434_744c2c9869_b.jpg')
file5 = URI.open('https://www.terre.tv/wp-content/uploads/2020/01/Narbonne-%C2%A9-iStock.jpg')
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Ride.destroy_all



puts "creating user..."
user = User.create!(
  firstname: "Paul",
  lastname: "Jack"
  email: "pauljack@gmail.com",
  password: "azerty")

puts "creating rides..."
puts "First one..."
ride_1 = Ride.new(
  title: 'Ride along the Atlantic Ocean',
  city_departure: 'Biarritz',
  city_arrival: 'Brest',
  departure_date:  '05/08/2021',
  arrival_date:  '10/08/2021' ,
  description: "Let's ride along the Majestuous Atlantic Ocean discovering the most amazing landscapes."  ,
)
ride_1.photo.attach(io: file1, filename: 'ride1.png', content_type: 'image/png')
ride_1.save!
puts "Second one..."
ride_2 = Ride.new(
  title: 'Mediterranean Run',
  city_departure: 'Perpignan',
  city_arrival: 'Menton',
  departure_date:  '07/04/2021' ,
  arrival_date:  '10/04/2021' ,
  description: "I would make a sportive run under the mediterranean sun, camaradery in rendez-vous!",
)
ride_2.photo.attach(io: file2, filename: 'ride2.png', content_type: 'image/png')
ride_2.save!
puts "Third one..."
ride_3 = Ride.new(
  title: 'Road to the North',
  city_departure: 'Paris',
  city_arrival: 'Lille',
  departure_date: '24/06/2021 ',
  arrival_date:  '25/06/2021' ,
  description: 'A family trip, chilling on the road to the beautiful city of Lille, everyone invited:)',
)
ride_3.photo.attach(io: file3, filename: 'ride3.png', content_type: 'image/png')
ride_3.save!
puts "Fourth one..."
ride_4 = Ride.new(
  title: 'Transalpine',
  city_departure: 'Chambery',
  city_arrival: 'Turin',
  departure_date:  '31/07/2021' ,
  arrival_date:  '03/08/2021' ,
  description: "Ride across the Alps from France to Italy!(Experimented level highly recommended)",
)
ride_4.photo.attach(io: file4, filename: 'ride4.png', content_type: 'image/png')
ride_4.save!
puts "Last one..."
ride_5 = Ride.new(
  title: 'Across Occitania',
  city_departure: 'Bordeaux',
  city_arrival: 'Narbonne',
  departure_date:  '15/07/2021' ,
  arrival_date:  '20/07/2021' ,
  description: "You want discover the Occitanian Country? Come with us! Visit of historical monuments and regional cuisine in the programm!",
)
ride_5.photo.attach(io: file5, filename: 'ride5.png', content_type: 'image/png')
ride_5.save!
puts "Rides created !"


