# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
arabsau = Country.create(:nombre => 'Arabia Saudita', 
  :apodo => 'The Falcons', :grupo => 'A', 
  :escudo => 'public/countries/AraLo.png', 
  :bandera => '../assets/banderas/arabiaSaudita')

@arabsauG = arabsau

  arab_coa = Coach.create(#Arabia Saudita
  :nombre => "Juan Antonio",
  :apellido => "Pizzi",
  :apodo => "Pizzigol",
  :fecha_nacimiento => Date.new(1968,6,7),
  :ciudad_nacimiento => "Santa Fe")

CoachTeam.create(
  :debut => Date.new(2017,11,28),
  :coach_id => arab_coa.id,
  :country_id  => arabsau.id)

Player.create(:nombre => "Mohammed",
  :apellido => "Al-Owais",
  :fecha_nacimiento => Date.new(1991,10,10),
  :ciudad_nacimiento => "Al-Hasaa",
  :posicion => "Portero",
  :dorsal => 22,
  :apodo => "N/A",
  :debut =>  Date.new(2015,9,1),
  :participaciones => 5,
  :country_id => arabsau.id,
  :goles => 0)

Player.create(:nombre => "Yasser",
  :apellido => "Al-Mosailem",
  :fecha_nacimiento => Date.new(1984,2,27),
  :ciudad_nacimiento => "Dschidda",
  :posicion => "Portero",
  :dorsal => 21,
  :apodo => "N/A",
  :debut =>  Date.new(2006,3,15),
  :participaciones => 32,
  :country_id => arabsau.id,
  :goles => 0)

Player.create(:nombre => "Abdullah",
  :apellido => "Al-Muaiouf",
  :fecha_nacimiento => Date.new(1987,1,23),
  :ciudad_nacimiento => "Al-Riyadh",
  :posicion => "Portero",
  :dorsal => 1,
  :apodo => "N/A",
  :debut =>  Date.new(2010,10,9),
  :participaciones => 9,
  :country_id => arabsau.id,
  :goles => 0)

Player.create(:nombre => "Motaz",
  :apellido => "Hawsawi",
  :fecha_nacimiento => Date.new(1992,2,17),
  :ciudad_nacimiento => "Jeddah",
  :posicion => "Defensa",
  :dorsal => 23,
  :apodo => "N/A",
  :debut =>  Date.new(2012,12,5),
  :participaciones => 15,
  :country_id => arabsau.id,
  :goles => 0)

Player.create(:nombre => "Omar",
  :apellido => "Hawsawi",
  :fecha_nacimiento => Date.new(1985,9,27),
  :ciudad_nacimiento => "Jeddah",
  :posicion => "Defensa",
  :dorsal => 5,
  :apodo => "N/A",
  :debut =>  Date.new(2013,9,9),
  :participaciones => 40,
  :country_id => arabsau.id,
  :goles => 3)

Player.create(:nombre => "Osama",
  :apellido => "Hawsawi",
  :fecha_nacimiento => Date.new(1984,3,31),
  :ciudad_nacimiento => "Ras Al-Khaimah",
  :posicion => "Defensa",
  :dorsal => 3,
  :apodo => "N/A",
  :debut =>  Date.new(2006,10,11),
  :participaciones => 133,
  :country_id => arabsau.id,
  :goles => 7)

Player.create(:nombre => "Ali",
  :apellido => "Al-Boleahi",
  :fecha_nacimiento => Date.new(1989,11,21),
  :ciudad_nacimiento => "Arabia Saudita",
  :posicion => "Defensa",
  :dorsal => 4,
  :apodo => "N/A",
  :debut =>  Date.new(2013,9,9),
  :participaciones => 1,
  :country_id => arabsau.id,
  :goles => 0)

Player.create(:nombre => "Yasir",
  :apellido => "Al-Shahrani",
  :fecha_nacimiento => Date.new(1992,5,25),
  :ciudad_nacimiento => "Ad-Dammam",
  :posicion => "Defensa",
  :dorsal => 13,
  :apodo => "N/A",
  :debut =>  Date.new(2012,9,7),
  :participaciones => 34,
  :country_id => arabsau.id,
  :goles => 0)

Player.create(:nombre => "Mansour",
  :apellido => "Al-Harbi",
  :fecha_nacimiento => Date.new(1987,10,19),
  :ciudad_nacimiento => "Jeddah",
  :posicion => "Defensa",
  :dorsal => 2,
  :apodo => "N/A",
  :debut =>  Date.new(2009,10,14),
  :participaciones => 37,
  :country_id => arabsau.id,
  :goles => 1)

Player.create(:nombre => "Mohammed",
  :apellido => "Al-Burayk",
  :fecha_nacimiento => Date.new(1992,9,15),
  :ciudad_nacimiento => "Arabia Saudita",
  :posicion => "Defensa",
  :dorsal => 6,
  :apodo => "N/A",
  :debut =>  Date.new(2016,8,24),
  :participaciones => 9,
  :country_id => arabsau.id,
  :goles => 1)

Player.create(:nombre => "Abdullah",
  :apellido => "Ateef",
  :fecha_nacimiento => Date.new(1992,8,3),
  :ciudad_nacimiento => "Al-Riyadh",
  :posicion => "Mediocampista",
  :dorsal => 14,
  :apodo => "N/A",
  :debut =>  Date.new(2013,2,6),
  :participaciones => 14,
  :country_id => arabsau.id,
  :goles => 1)

Player.create(:nombre => "Abdulmalek",
  :apellido => "Al-Khaibri",
  :fecha_nacimiento => Date.new(1986,3,13),
  :ciudad_nacimiento => "Al-Riyadh",
  :posicion => "Mediocampista",
  :dorsal => 11,
  :apodo => "N/A",
  :debut =>  Date.new(2015,9,1),
  :participaciones => 35,
  :country_id => arabsau.id,
  :goles => 0)

Player.create(:nombre => "Abdullah",
  :apellido => "Al-Khaibari",
  :fecha_nacimiento => Date.new(1996,8,16),
  :ciudad_nacimiento => "Arabia Saudita",
  :posicion => "Mediocampista",
  :dorsal => 15,
  :apodo => "N/A",
  :debut =>  Date.new(2018,2,26),
  :participaciones => 3,
  :country_id => arabsau.id,
  :goles => 0)

Player.create(:nombre => "Salman",
  :apellido => "Al-Faraj",
  :fecha_nacimiento => Date.new(1989,8,1),
  :ciudad_nacimiento => "Medina",
  :posicion => "Mediocampista",
  :dorsal => 7,
  :apodo => "N/A",
  :debut =>  Date.new(2011,12,11),
  :participaciones => 40,
  :country_id => arabsau.id,
  :goles => 3)

Player.create(:nombre => "Hussein",
  :apellido => "Al-Moghawi",
  :fecha_nacimiento => Date.new(1988,3,24),
  :ciudad_nacimiento => "Jeddah",
  :posicion => "Mediocampista",
  :dorsal => 16,
  :apodo => "N/A",
  :debut =>  Date.new(2012,12,9),
  :participaciones => 15,
  :country_id => arabsau.id,
  :goles => 1)

Player.create(:nombre => "Taisir",
  :apellido => "Al-Jassim",
  :fecha_nacimiento => Date.new(1984,7,25),
  :ciudad_nacimiento => "Al-Hasaa",
  :posicion => "Mediocampista",
  :dorsal => 17,
  :apodo => "N/A",
  :debut =>  Date.new(2004,11,17),
  :participaciones => 129,
  :country_id => arabsau.id,
  :goles => 18)

Player.create(:nombre => "Mohamed",
  :apellido => "Kanu",
  :fecha_nacimiento => Date.new(1994,9,2),
  :ciudad_nacimiento => "Arabia Saudita",
  :posicion => "Mediocampista",
  :dorsal => 12,
  :apodo => "N/A",
  :debut =>  Date.new(2011,12,11),
  :participaciones => 5,
  :country_id => arabsau.id,
  :goles => 1)

Player.create(:nombre => "Hattan",
  :apellido => "Bahbir",
  :fecha_nacimiento => Date.new(1992,7,16),
  :ciudad_nacimiento => "Dschidda",
  :posicion => "Mediocampista",
  :dorsal => 9,
  :apodo => "N/A",
  :debut =>  Date.new(2011,12,11),
  :participaciones => 3,
  :country_id => arabsau.id,
  :goles => 0)

Player.create(:nombre => "Yahya",
  :apellido => "Al-Shehri",
  :fecha_nacimiento => Date.new(1990,6,26),
  :ciudad_nacimiento => "Ad-Dammam",
  :posicion => "Mediocampista",
  :dorsal => 8,
  :apodo => "N/A",
  :debut =>  Date.new(2009,10,14),
  :participaciones => 5,
  :country_id => arabsau.id,
  :goles => 7)

Player.create(:nombre => "Fahad",
  :apellido => "Al-Muwallad",
  :fecha_nacimiento => Date.new(1994,9,14),
  :ciudad_nacimiento => "Jeddah",
  :posicion => "Delantero",
  :dorsal => 19,
  :apodo => "N/A",
  :debut =>  Date.new(2012,10,14),
  :participaciones => 42,
  :country_id => arabsau.id,
  :goles => 10)

Player.create(:nombre => "Salem",
  :apellido => "Al-Dawsari",
  :fecha_nacimiento => Date.new(1991,8,19),
  :ciudad_nacimiento => "Wadi Aldwaser",
  :posicion => "Delantero",
  :dorsal => 18,
  :apodo => "N/A",
  :debut =>  Date.new(2012,2,29),
  :participaciones => 30,
  :country_id => arabsau.id,
  :goles => 4)

Player.create(:nombre => "Muhannad",
  :apellido => "Asiri",
  :fecha_nacimiento => Date.new(1986,10,14),
  :ciudad_nacimiento => "Mahayel Asir",
  :posicion => "Delantero",
  :dorsal => 20,
  :apodo => "N/A",
  :debut =>  Date.new(2010,10,9),
  :participaciones => 17,
  :country_id => arabsau.id,
  :goles => 4)

Player.create(:nombre => "Mohammed",
  :apellido => "Al-Sahlawi",
  :fecha_nacimiento => Date.new(1987,1,10),
  :ciudad_nacimiento => "Al-Hofuf",
  :posicion => "Delantero",
  :dorsal => 10,
  :apodo => "N/A",
  :debut =>  Date.new(2015,9,1),
  :participaciones => 38,
  :country_id => arabsau.id,
  :goles => 28)



