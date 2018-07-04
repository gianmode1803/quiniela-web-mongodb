# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tun = Country.create(
  :nombre => 'Túnez', 
  :apodo => 'The Eagles of Carthage', 
  :grupo => 'G', 
  :escudo => 'public/countries/TunLo.png', 
  :bandera => '../assets/banderas/tunez')

@tunG = tun

tun_coa = Coach.create(#Tunez
  :nombre => "Nabil",
  :apellido => "Maâloul",
  :apodo => "N/A",
  :fecha_nacimiento => Date.new(1962,12,25),
  :ciudad_nacimiento => "Túnez")

 CoachTeam.create(
  :debut => Date.new(2015,2,9),
  :coach_id => tun_coa.id,
  :country_id  => tun.id)


Player.create(:nombre => "Aymen",
  :apellido => "Mathlouthi",
  :fecha_nacimiento => Date.new(1984,9,14),
  :ciudad_nacimiento => "Túnez",
  :posicion => "Portero",
  :dorsal => 16,
  :apodo => "N/A",
  :debut =>  Date.new(2007,11,21),
  :participaciones => 70,
  :country_id => tun.id,
  :goles => 0)

Player.create(:nombre => "Mouez",
  :apellido => "Hassen",
  :fecha_nacimiento => Date.new(1995,3,5),
  :ciudad_nacimiento => "Fréjus",
  :posicion => "Portero",
  :dorsal => 22,
  :apodo => "N/A",
  :debut =>  Date.new(2018,3,27),
  :participaciones => 3,
  :country_id => tun.id,
  :goles => 0)

Player.create(:nombre => "Farouk",
  :apellido => "Ben Mustapha",
  :fecha_nacimiento => Date.new(1989,6,1),
  :ciudad_nacimiento => "Bizerte",
  :posicion => "Portero",
  :dorsal => 1,
  :apodo => "N/A",
  :debut =>  Date.new(2012,8,15),
  :participaciones => 13,
  :country_id => tun.id,
  :goles => 0)

Player.create(:nombre => "Dylan",
  :apellido => "Bronn",
  :fecha_nacimiento => Date.new(1995,6,16),
  :ciudad_nacimiento => "Cannes",
  :posicion => "Defensa",
  :dorsal => 22,
  :apodo => "N/A",
  :debut =>  Date.new(2017,3,28),
  :participaciones => 15,
  :country_id => tun.id,
  :goles => 0)

Player.create(:nombre => "Yohan",
  :apellido => "Benalouane",
  :fecha_nacimiento => Date.new(1987,3,28),
  :ciudad_nacimiento => "Bagnols-sur-Cèze",
  :posicion => "Defensa",
  :dorsal => 29,
  :apodo => "N/A",
  :debut =>  Date.new(2018,3,23),
  :participaciones => 3,
  :country_id => tun.id,
  :goles => 0)

Player.create(:nombre => "Yassine",
  :apellido => "Meriah",
  :fecha_nacimiento => Date.new(1993,7,2),
  :ciudad_nacimiento => "Tunis",
  :posicion => "Defensa",
  :dorsal => 23,
  :apodo => "N/A",
  :debut =>  Date.new(2015,10,9),
  :participaciones => 16,
  :country_id => tun.id,
  :goles => 1)

Player.create(:nombre => "Syam",
  :apellido => "Ben Youssef",
  :fecha_nacimiento => Date.new(1989,3,31),
  :ciudad_nacimiento => "Marselle",
  :posicion => "Defensa",
  :dorsal => 13,
  :apodo => "N/A",
  :debut =>  Date.new(2013,3,13),
  :participaciones => 43,
  :country_id => tun.id,
  :goles => 1)

Player.create(:nombre => "Rami",
  :apellido => "Bedoui",
  :fecha_nacimiento => Date.new(1992,5,25),
  :ciudad_nacimiento => "Sousse",
  :posicion => "Defensa",
  :dorsal => 26,
  :apodo => "N/A",
  :debut =>  Date.new(2012,10,16),
  :participaciones => 10,
  :country_id => tun.id,
  :goles => 0)

Player.create(:nombre => "Oussama",
  :apellido => "Haddadi",
  :fecha_nacimiento => Date.new(1992,1,28),
  :ciudad_nacimiento => "Tunis",
  :posicion => "Defensa",
  :dorsal => 5,
  :apodo => "N/A",
  :debut =>  Date.new(2015,3,31),
  :participaciones => 8,
  :country_id => tun.id,
  :goles => 0)

Player.create(:nombre => "Ali",
  :apellido => "Maâloul",
  :fecha_nacimiento => Date.new(1990,1,1),
  :ciudad_nacimiento => "Sfax",
  :posicion => "Defensa",
  :dorsal => 12,
  :apodo => "N/A",
  :debut =>  Date.new(2013,7,6),
  :participaciones => 48,
  :country_id => tun.id,
  :goles => 0)

Player.create(:nombre => "Hamdi",
  :apellido => "Nagguez",
  :fecha_nacimiento => Date.new(1992,10,28),
  :ciudad_nacimiento => "Menzel Kamel",
  :posicion => "Defensa",
  :dorsal => 21,
  :apodo => "N/A",
  :debut =>  Date.new(2015,9,5),
  :participaciones => 17,
  :country_id => tun.id,
  :goles => 0)

Player.create(:nombre => "Ellyes",
  :apellido => "Skhiri",
  :fecha_nacimiento => Date.new(1995,5,10),
  :ciudad_nacimiento => "Lunel",
  :posicion => "Centrocampista",
  :dorsal => 17,
  :apodo => "N/A",
  :debut =>  Date.new(2018,3,23),
  :participaciones => 4,
  :country_id => tun.id,
  :goles => 0)

Player.create(:nombre => "Ahmed",
  :apellido => "Khalil",
  :fecha_nacimiento => Date.new(1994,12,21),
  :ciudad_nacimiento => " Kairuán",
  :posicion => "Centrocampista",
  :dorsal => 18,
  :apodo => "N/A",
  :debut =>  Date.new(2016,1,26),
  :participaciones => 2,
  :country_id => tun.id,
  :goles => 0)

Player.create(:nombre => "Mohamed Amine",
  :apellido => "Ben Amor",
  :fecha_nacimiento => Date.new(1992,5,3),
  :ciudad_nacimiento => "Susa",
  :posicion => "Centrocampista",
  :dorsal => 14,
  :apodo => "N/A",
  :debut =>  Date.new(2015,6,5),
  :participaciones => 26,
  :country_id => tun.id,
  :goles =>2)

Player.create(:nombre => "Ferjani",
  :apellido => "Sassi",
  :fecha_nacimiento => Date.new(1992,3,18),
  :ciudad_nacimiento => "Ariana",
  :posicion => "Centrocampista",
  :dorsal => 13,
  :apodo => "N/A",
  :debut =>  Date.new(2013,6,8),
  :participaciones => 40,
  :country_id => tun.id,
  :goles => 3)

Player.create(:nombre => "Ghaylène",
  :apellido => "Chaalali",
  :fecha_nacimiento => Date.new(1994,2,28),
  :ciudad_nacimiento => "La Manouba",
  :posicion => "Centrocampista",
  :dorsal => 20,
  :apodo => "N/A",
  :debut =>  Date.new(2017,06,11),
  :participaciones => 7,
  :country_id => tun.id,
  :goles => 1)

Player.create(:nombre => "Wahbi",
  :apellido => "Khazri",
  :fecha_nacimiento => Date.new(1991,2,8),
  :ciudad_nacimiento => "Ajaccio",
  :posicion => "Delantero",
  :dorsal => 10,
  :apodo => "N/A",
  :debut =>  Date.new(2013,1,7),
  :participaciones => 37,
  :country_id => tun.id,
  :goles => 12)

Player.create(:nombre => "Saîf-Eddine",
  :apellido => "Khaoui",
  :fecha_nacimiento => Date.new(1995,4,27),
  :ciudad_nacimiento => "Lyon",
  :posicion => "Centrocampista",
  :dorsal => 7,
  :apodo => "N/A",
  :debut =>  Date.new(2018,3,23),
  :participaciones => 4,
  :country_id => tun.id,
  :goles => 0)

Player.create(:nombre => "Naïm",
  :apellido => "Sliti",
  :fecha_nacimiento => Date.new(1992,7,27),
  :ciudad_nacimiento => "Marsella",
  :posicion => "Centrocampista",
  :dorsal => 23,
  :apodo => "N/A",
  :debut =>  Date.new(2016,6,3),
  :participaciones => 19,
  :country_id => tun.id,
  :goles => 3)

Player.create(:nombre => "Bassem",
  :apellido => "Srarfi",
  :fecha_nacimiento => Date.new(1997,06,25),
  :ciudad_nacimiento => "Tunis",
  :posicion => "Centrocampista",
  :dorsal => 18,
  :apodo => "N/A",
  :debut =>  Date.new(2018,03,23),
  :participaciones => 4,
  :country_id => tun.id,
  :goles => 0)

Player.create(:nombre => "Fakhreddine",
  :apellido => "Ben Youssef",
  :fecha_nacimiento => Date.new(1991,6,23),
  :ciudad_nacimiento => "Tunis",
  :posicion => "Delantero",
  :dorsal => 8,
  :apodo => "N/A",
  :debut =>  Date.new(2012,10,16),
  :participaciones => 38,
  :country_id => tun.id,
  :goles => 5)

Player.create(:nombre => "Anice",
  :apellido => "Badri",
  :fecha_nacimiento => Date.new(1990,9,18),
  :ciudad_nacimiento => "Lyon",
  :posicion => "Delantero",
  :dorsal => 9,
  :apodo => "N/A",
  :debut =>  Date.new(2016,3,25),
  :participaciones => 9,
  :country_id => tun.id,
  :goles => 3)

Player.create(:nombre => "Saber",
  :apellido => "Khalifa",
  :fecha_nacimiento => Date.new(1986,10,14),
  :ciudad_nacimiento => "Gabes",
  :posicion => "Delantero",
  :dorsal => 19,
  :apodo => "N/A",
  :debut =>  Date.new(2015,9,1),
  :participaciones => 44,
  :country_id => tun.id,
  :goles => 7)




