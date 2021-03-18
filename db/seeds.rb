 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"

file01 = URI.open('http://connor.anglican.org/cmsfiles/images/staff/J/Paul-Jack-KB1-sm.jpg')
file02 = URI.open('https://www.10wallpaper.com/wallpaper/1280x1024/1604/Chinese_youth_fashion_beauty_actress_photo_wallpaper_1280x1024.jpg')
file03 = URI.open('http://www.fenzyme.com/wp-content/uploads/2014/10/hot-black-men-beard-styles-2.jpg')
file04 = URI.open('https://qph.fs.quoracdn.net/main-qimg-a265c71564892e5b60a7506a5fb3cf7d')
file05 = URI.open('https://www.meet-the-right-man.com/wp-content/uploads/2019/04/dating-eastern-european-men.jpg')
file1 = URI.open('https://www.ciel.fr/wp-content/uploads/2015/11/port-de-Brest.jpg')
file2 = URI.open('https://www.terre.tv/wp-content/uploads/2020/02/Menton-%C2%A9-iStock.jpg')
file3 = URI.open('https://d1bvpoagx8hqbg.cloudfront.net/originals/erasmus-experience-lille-france-veronika-132dbe92a3544efead4016df9b79cc1e.jpg')
file4 = URI.open('https://c2.staticflickr.com/8/7422/12943457434_744c2c9869_b.jpg')
file5 = URI.open('https://www.terre.tv/wp-content/uploads/2020/01/Narbonne-%C2%A9-iStock.jpg')
file61 = URI.open('https://www.orangesmile.com/hotelguidephoto/brest-hoteldelapaix.jpg')
file62 = URI.open('https://medias.bestwestern.fr/props_iceportal/93686/66640142_XL.jpg?frz-v=18')
file63 = URI.open('https://images.dayuse.com/50QcYsf-Ko4C-jLDfGiIrv9Iy50=/0x480/hotels/333-12691/383bfc9d6a84f42bd46cdbf411a8c64b-ibis-brest-kergaradec-aeroport.jpeg')
file64 = URI.open('https://s-ec.bstatic.com/images/hotel/max1024x768/476/4760637.jpg')
file65 = URI.open('https://static.travelagewest.com/i/sized/780/437/media.iceportal.com/120359/photos/64478547_XL.jpg')
file71 = URI.open('https://www.napoleon-menton.com/wcms/img/hotel-napoleon-gallery-sizel-404851-1600-1200.jpg')
file72 = URI.open('https://media-cdn.tripadvisor.com/media/photo-o/1a/85/77/26/img-20200106-102138-largejpg.jpg')
file73 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/01/f1/7c/ed/hotel-lemon.jpg')
file74 = URI.open('https://media-cdn.tripadvisor.com/media/photo-o/0f/a2/52/b7/facade.jpg')
file75 = URI.open('https://media-cdn.tripadvisor.com/media/photo-o/1b/66/4e/7d/hotel-narev-s.jpg')
file81 = URI.open('https://media-cdn.tripadvisor.com/media/photo-o/12/71/4c/2f/photo0jpg.jpg')
file82 = URI.open('https://media-cdn.tripadvisor.com/media/photo-w/14/1a/17/34/carlton-hotel.jpg')
file83 = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/1c/b3/64/f1/entrance.jpg')
file84 = URI.open('https://media-cdn.tripadvisor.com/media/photo-o/05/52/1a/b8/couvent-des-minimes-alliance.jpg')
file85 = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/1c/4e/d0/85/exterior-view.jpg')
file91 = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/19/87/2e/41/hotel-principi-di-piemonte.jpg')
file92 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/03/13/2f/b8/residence-sacchi.jpg')
file93 = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/19/df/e1/80/exterior.jpg')
file94 = URI.open('https://media-cdn.tripadvisor.com/media/photo-o/0d/ce/6e/ba/nh-torino-santo-stefano.jpg')
file95 = URI.open('https://media-cdn.tripadvisor.com/media/photo-o/1b/45/27/d6/exterior.jpg')
file101 = URI.open('https://media-cdn.tripadvisor.com/media/photo-o/12/f9/30/85/la-maison-gustave.jpg')
file102 = URI.open('https://media-cdn.tripadvisor.com/media/photo-o/13/9b/dd/c1/ponton-de-l-ile-du-gua.jpg')
file103 = URI.open('https://media-cdn.tripadvisor.com/media/photo-o/05/77/0e/44/ibis-budget-narbonne.jpg')
file104 = URI.open('https://media-cdn.tripadvisor.com/media/photo-o/0d/34/6e/da/domaine-de-beaupre.jpg')
file105 = URI.open('https://media-cdn.tripadvisor.com/media/photo-w/1b/a2/68/5f/au-paradis-cathare.jpg')





puts "Cleaning database..."
Message.destroy_all
Chatroom.destroy_all
Ride.destroy_all
User.destroy_all
Hotel.destroy_all
Participant.destroy_all

puts "creating users..."
puts "First one..."
user_1 = User.new(
  firstname: "Paul",
  lastname: "Jack",
  pseudo: "JP",
  email: "pauljack@gmail.com",
  password: "azerty",
)
user_1.photo.attach(io: file01, filename: 'user1.png', content_type: 'image/png')
user_1.save!

puts "Second one..."
user_2 = User.new(
  firstname: "Lin",
  lastname: "Wei",
  pseudo: "LinLin",
  email: "linwei@gmail.com",
  password: "azerty",
)
user_2.photo.attach(io: file02, filename: 'user2.png', content_type: 'image/png')
user_2.save!

puts "Third one..."
user_3 = User.new(
  firstname: "Moshe",
  lastname: "Adewale",
  pseudo: "Black Panther",
  email: "mosheadewale@gmail.com",
  password: "azerty",
)
user_3.photo.attach(io: file03, filename: 'user3.png', content_type: 'image/png')
user_3.save!

puts "Fourth one..."
user_4 = User.new(
  firstname: "Setareh",
  lastname: "Azad",
  pseudo: "Safavi",
  email: "setarehazad@gmail.com",
  password: "azerty",
)
user_4.photo.attach(io: file04, filename: 'user4.png', content_type: 'image/png')
user_4.save!

puts "Last one..."
user_5 = User.new(
  firstname: "Gaston",
  lastname: "Beauregard",
  pseudo: "Gas",
  email: "gastonbeauregard@gmail.com",
  password: "azerty",
)
user_5.photo.attach(io: file05, filename: 'user5.png', content_type: 'image/png')
user_5.save!

puts "creating rides..."
puts "First one..."
ride_1 = Ride.new(
  title: 'Ride along the Atlantic',
  city_departure: 'Biarritz',
  city_arrival: 'Bordeaux',
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
ride_2.user = user_2
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
ride_3.user = user_3
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
ride_4.user = user_4
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
ride_5.user = user_5
ride_5.save!
puts "Rides created !"

puts "Creating hostels..."

puts "Of the First City..."
hotel_11 = Hotel.new(
  name: "La Paix Hotel Contemporain",
  city: "Brest",
  hotel_description: "Original, étonnant, zen... sont certainement les premiers mots qui viennent à l'esprit lorsque l'on découvre ce surprenant hôtel idéalement situé au centre de la ville.",
  price: "205"
)
hotel_11.photo.attach(io: file61, filename: 'hotel11.png', content_type: 'image/png')
hotel_11.save!
hotel_12 = Hotel.new(
  name: "Best Western Plus Europe Hotel",
  city: "Brest",
  hotel_description: "Finding an ideal hotel in Brest does not have to be difficult. Welcome to Best Western Europe Hotel, a nice option for travelers like you.",
  price: "100"
)
hotel_12.photo.attach(io: file62, filename: 'hotel12.png', content_type: 'image/png')
hotel_12.save!
hotel_13 = Hotel.new(
  name: "Ibis Brest Kergaradec Airport Hotel",
  city: "Brest",
  hotel_description: "The Ibis Brest Kergaradec hotel is at the entrance to the city, on the route to the islands of Finistère, the Côte des Légendes, and the Pays des Abers.",
  price: "65"
)
hotel_13.photo.attach(io: file63, filename: 'hotel13.png', content_type: 'image/png')
hotel_13.save!
hotel_14 = Hotel.new(
  name: "Saint-Louis Hotel",
  city: "Brest",
  hotel_description: "Saint Louis Hotel features express check-in and check-out. Guests arriving by vehicle have access to paid public parking available nearby.",
  price: "59"
)
hotel_14.photo.attach(io: file64, filename: 'hotel14.png', content_type: 'image/png')
hotel_14.save!
hotel_15 = Hotel.new(
  name: "Hotel Escale Oceania",
  city: "Brest",
  hotel_description: "Located just 5 minutes' walk from the tramway, Porte de Gouesnou stop, at the heart of the business district, and close to the airport, our hotel is a perfect stopover!",
  price: "79"
)
hotel_15.photo.attach(io: file65, filename: 'hotel15.png', content_type: 'image/png')
hotel_15.save!


puts "Of the Second City..."
hotel_21 = Hotel.new(
  name: "Hotel Napoleon",
  city: "Menton",
  hotel_description: "Our philosophy: An elegant, comfortable, unpretentious boutique hotel - for guests seeking quality without ostentation on the French Riviera.",
  price: "172"
)
hotel_21.photo.attach(io: file71, filename: 'hotel21.png', content_type: 'image/png')
hotel_21.save!
hotel_22 = Hotel.new(
  name: "Hotel Mediterranee",
  city: "Menton",
  hotel_description: "89 rooms and 5 apartments for rent, the Hotel Méditerranée welcomes you in a warm, modern setting.",
  price: "140"
)
hotel_22.photo.attach(io: file72, filename: 'hotel22.png', content_type: 'image/png')
hotel_22.save!
hotel_23 = Hotel.new(
  name: "Hotel Lemon",
  city: "Menton",
  hotel_description: "Doté d'une connexion Wi-Fi gratuite, l'Hotel Lemon est un hôtel respectueux de l'environnement situé à Menton, à 29 km de Nice et à 30 minutes de la frontière italienne.",
  price: "64"
)
hotel_23.photo.attach(io: file73, filename: 'hotel23.png', content_type: 'image/png')
hotel_23.save!
hotel_24 = Hotel.new(
  name: "Grand Hotel des Ambassadeurs",
  city: "Menton",
  hotel_description: "We are happy to give a new life - for your greatest comfort - to this architectural gem, the jewel of Menton: the Grand Hôtel des Ambassadeurs, inaugurated in 1865.",
  price: "132"
)
hotel_24.photo.attach(io: file74, filename: 'hotel24.png', content_type: 'image/png')
hotel_24.save!
hotel_25 = Hotel.new(
  name: "Hotel Narev's",
  city: "Menton",
  hotel_description: "Between the sea and the mountains, come stay in our hotel in Menton , opposite the Regional Prehistory Museum.",
  price: "61"
)
hotel_25.photo.attach(io: file75, filename: 'hotel25.png', content_type: 'image/png')
hotel_25.save!

puts "Of the Third City..."
hotel_31 = Hotel.new(
  name: "Hotel L'Arbre Voyageur",
  city: "Lille",
  hotel_description: "Ideally located in the heart of Lille, it is less than 300 meters from the Grand Place and 500 meters from Lille Flandres and Lille Europe stations or the metro.",
  price: "92"
)
hotel_31.photo.attach(io: file81, filename: 'hotel31.png', content_type: 'image/png')
hotel_31.save!
hotel_32 = Hotel.new(
  name: "Carlton Hotel",
  city: "Lille",
  hotel_description: "Combining charm, space and comfort, the hotel is endowed with 59 rooms and suites, fully renovated and decorated in art deco style.",
  price: "133"
)
hotel_32.photo.attach(io: file82, filename: 'hotel32.png', content_type: 'image/png')
hotel_32.save!
hotel_33 = Hotel.new(
  name: "L'Hermitage Gantois",
  city: "Lille",
  hotel_description: "Behind a beautiful flemish and gothic front you will discover a “museum”hotel that will offer you serenity, warm welcome, quality service and goodgastronomic food.",
  price: "169"
)
hotel_33.photo.attach(io: file83, filename: 'hotel33.png', content_type: 'image/png')
hotel_33.save!
hotel_34 = Hotel.new(
  name: "Couvent des Minimes",
  city: "Lille",
  hotel_description: "Located a few minutes from the city center of Lille, the Couvent des Minimes 4*was built in the seventeenth century, between 1622 and 1638.",
  price: "117"
)
hotel_34.photo.attach(io: file84, filename: 'hotel34.png', content_type: 'image/png')
hotel_34.save!
hotel_35 = Hotel.new(
  name: "Ibis Lille Centre Grand Palais Hotel",
  city: "Lille",
  hotel_description: "If you’re looking for a family-friendly hotel in Lille, look no further than Ibis Lille Centre Grand Palais Hotel.",
  price: "63"
)
hotel_35.photo.attach(io: file85, filename: 'hotel35.png', content_type: 'image/png')
hotel_35.save!

puts "Of the Fourth City..."
hotel_41 = Hotel.new(
  name: "Hotel Principi di Piemonte",
  city: "Turin",
  hotel_description: "Hotel in Turin downtown, a symbol of the glorious past of one among the most important European Royal Family in 1800.",
  price: "160"
)
hotel_41.photo.attach(io: file91, filename: 'hotel41.png', content_type: 'image/png')
hotel_41.save!
hotel_42 = Hotel.new(
  name: "Residence Sacchi",
  city: "Turin",
  hotel_description: "Placed in a strategic position with respect to all city's connection services : in the centre of Turin, next to Porta Nuova railway station.",
  price: "92"
)
hotel_42.photo.attach(io: file92, filename: 'hotel42.png', content_type: 'image/png')
hotel_42.save!
hotel_43 = Hotel.new(
  name: "DoubleTree By Hilton Turin Lingotto",
  city: "Turin",
  hotel_description: "The DoubleTree by Hilton Turin Lingotto hotel, seamlessly combines the best of Turin’s old and new.",
  price: "77"
)
hotel_43.photo.attach(io: file93, filename: 'hotel43.png', content_type: 'image/png')
hotel_43.save!
hotel_44 = Hotel.new(
  name: "NH Torino Santo Stefano",
  city: "Turin",
  hotel_description: "The NH Torino Santo Stefano is located in the Quadrilatero Romano, one of the most fashionable district of Turin, full of restaurants and shops.",
  price: "108"
)
hotel_44.photo.attach(io: file94, filename: 'hotel44.png', content_type: 'image/png')
hotel_44.save!
hotel_45 = Hotel.new(
  name: "Best Quality Hotel Dock Milano",
  city: "Turin",
  hotel_description: "Everyone needs a place to lay their weary head. For travelers visiting Turin, Hotel Dock Milano is an excellent choice for rest and rejuvenation.",
  price: "69"
)
hotel_45.photo.attach(io: file95, filename: 'hotel45.png', content_type: 'image/png')
hotel_45.save!

puts "Of the Last City..."
hotel_51 = Hotel.new(
  name: "La Maison Gustave",
  city: "Narbonne",
  hotel_description: "La Maison Gustave is an excellent choice for travelers visiting Narbonne, offering a romantic environment alongside many helpful amenities designed to enhance your stay.",
  price: "117"
)
hotel_51.photo.attach(io: file101, filename: 'hotel51.png', content_type: 'image/png')
hotel_51.save!
hotel_52 = Hotel.new(
  name: "Ile du Gua Suites",
  city: "Narbonne",
  hotel_description: "See why so many travelers make Ile du Gua Suites their hotel of choice when visiting Narbonne.",
  price: "131"
)
hotel_52.photo.attach(io: file102, filename: 'hotel52.png', content_type: 'image/png')
hotel_52.save!
hotel_53 = Hotel.new(
  name: "Ibis Budget Narbonne Sud",
  city: "Narbonne",
  hotel_description: "Everyone needs a place to lay their weary head. For travelers visiting Narbonne, Ibis Budget Narbonne Sud is an excellent choice for rest and rejuvenation.",
  price: "55"
)
hotel_53.photo.attach(io: file103, filename: 'hotel53.png', content_type: 'image/png')
hotel_53.save!
hotel_54 = Hotel.new(
  name: "Domaine de Beaupre",
  city: "Narbonne",
  hotel_description: "See why so many travelers make Domaine de Beaupre their bed and breakfast of choice when visiting Narbonne.",
  price: "85"
)
hotel_54.photo.attach(io: file104, filename: 'hotel54.png', content_type: 'image/png')
hotel_54.save!
hotel_55 = Hotel.new(
  name: "Au Paradis Cathare",
  city: "Narbonne",
  hotel_description: "Au Paradis Cathare B&B offers a garden with swimming pool, patio and furnished terrace.",
  price: "80"
)
hotel_55.photo.attach(io: file105, filename: 'hotel55.png', content_type: 'image/png')
hotel_55.save!

puts "All the seed has been (finally) created !"
