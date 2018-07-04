# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
suecia = Country.create(:nombre => 'Suecia', :apodo => 'Los Vikingos Amarillos', :grupo => 'F', :escudo => 'public/countries/SueLo.png', :bandera => '../assets/banderas/suecia')

@sueciaG = suecia

 sue_coa =  Coach.create(#Croacia
  :nombre => "Janne",
  :apellido => "Andersson",
  :apodo => "N/A",
  :fecha_nacimiento => Date.new(1962,9,29),
  :ciudad_nacimiento => "Halmstad")


CoachTeam.create(
  :debut => Date.new(2017,10,7),
  :coach_id => sue_coa.id,
  :country_id  => suecia.id)


Player.create(:nombre => "Karl Johan",
  :apellido => "Jhonsson",
  :fecha_nacimiento => Date.new(1990,1,28),
  :ciudad_nacimiento => "Ränneslöv, Suecia",
  :posicion => "Portero",
  :dorsal => 12,
  :apodo => "N/A",
  :debut =>  Date.new(2012,1,23),
  :participaciones => 5,
  :country_id => suecia.id,
  :goles => 0)

Player.create(:nombre => "Kristoffer",
  :apellido => "Nordfeldt",
  :fecha_nacimiento => Date.new(1989,6,23),
  :ciudad_nacimiento => "Estocolmo, Suecia",
  :posicion => "Portero",
  :dorsal => 23,
  :apodo => "Nordfeldt",
  :debut =>  Date.new(2011,1,22),
  :participaciones => 8,
  :country_id => suecia.id,
  :goles => 0)

Player.create(:nombre => "Robin",
  :apellido => "Olsen",
  :fecha_nacimiento => Date.new(1990,1,8),
  :ciudad_nacimiento => "Malmö, Suecia",
  :posicion => "Portero",
  :dorsal => 1,
  :apodo => "N/A",
  :debut =>  Date.new(2015,1,15),
  :participaciones => 17,
  :country_id => suecia.id,
  :goles => 0)

Player.create(:nombre => "Victor",
  :apellido => "Nilsson-Lindelöf",
  :fecha_nacimiento => Date.new(1994,7,17),
  :ciudad_nacimiento => "Västerås, Suecia",
  :posicion => "Defensa central",
  :dorsal => 3,
  :apodo => "Victor Lindelöf",
  :debut =>  Date.new(2016,3,24),
  :participaciones => 20,
  :country_id => suecia.id,
  :goles => 1)

Player.create(:nombre => "Pontus",
  :apellido => "Jansson",
  :fecha_nacimiento => Date.new(1991,2,13),
  :ciudad_nacimiento => "Arlöv, Suecia",
  :posicion => "Defensa central",
  :dorsal => 18,
  :apodo => "N/A",
  :debut =>  Date.new(2012,1,18),
  :participaciones => 15,
  :country_id => suecia.id,
  :goles => 0)

Player.create(:nombre => "Andreas",
  :apellido => "Granqvist",
  :fecha_nacimiento => Date.new(1985,4,16),
  :ciudad_nacimiento => "Påarp, Suecia",
  :posicion => "Defensa central",
  :dorsal => 4,
  :apodo => "Granqvist",
  :debut =>  Date.new(2006,1,23),
  :participaciones => 71,
  :country_id => suecia.id,
  :goles => 6)

Player.create(:nombre => "Filip",
  :apellido => "Helander",
  :fecha_nacimiento => Date.new(1993,4,22),
  :ciudad_nacimiento => "Malmö, Suecia",
  :posicion => "Defensa central",
  :dorsal => 14,
  :apodo => "N/A",
  :debut =>  Date.new(2017,3,28),
  :participaciones => 4,
  :country_id => suecia.id,
  :goles => 0)

Player.create(:nombre => "Ludwig",
  :apellido => "Augustinsson",
  :fecha_nacimiento => Date.new(1994,4,21),
  :ciudad_nacimiento => "Estocolmo, Suecia",
  :posicion => "Lateral izquierdo",
  :dorsal => 6,
  :apodo => "N/A",
  :debut =>  Date.new(2015,1,15),
  :participaciones => 14,
  :country_id => suecia.id,
  :goles => 0)

Player.create(:nombre => "Martin",
  :apellido => "Olson",
  :fecha_nacimiento => Date.new(1988,5,17),
  :ciudad_nacimiento => "Gävle, Suecia",
  :posicion => "Lateral izquierdo",
  :dorsal => 5,
  :apodo => "N/A",
  :debut =>  Date.new(2010,5,29),
  :participaciones => 43,
  :country_id => suecia.id,
  :goles => 5)

Player.create(:nombre => "Mikael",
  :apellido => "Lustig",
  :fecha_nacimiento => Date.new(1986,12,13),
  :ciudad_nacimiento => "Umeå, Suecia",
  :posicion => "Lateral derecho",
  :dorsal => 2,
  :apodo => "N/A",
  :debut =>  Date.new(2008,1,19),
  :participaciones => 64,
  :country_id => suecia.id,
  :goles => 6)

Player.create(:nombre => "Emil",
  :apellido => "Krafth",
  :fecha_nacimiento => Date.new(1994,8,2),
  :ciudad_nacimiento => "Ljungby, Suecia",
  :posicion => "Lateral derecho",
  :dorsal => 16,
  :apodo => "N/A",
  :debut =>  Date.new(2014,1,17),
  :participaciones => 12,
  :country_id => suecia.id,
  :goles => 0)

Player.create(:nombre => "Gustav",
  :apellido => "Svensson",
  :fecha_nacimiento => Date.new(1987,2,7),
  :ciudad_nacimiento => "Gotemburgo, Suecia",
  :posicion => "Pivote",
  :dorsal => 13,
  :apodo => "N/A",
  :debut =>  Date.new(2009,1,24),
  :participaciones => 12,
  :country_id => suecia.id,
  :goles => 0)

Player.create(:nombre => "Oscar",
  :apellido => "Hiljemark",
  :fecha_nacimiento => Date.new(1992,6,28),
  :ciudad_nacimiento => "Gislaved, Suecia",
  :posicion => "Medio centro",
  :dorsal => 15,
  :apodo => "N/A",
  :debut =>  Date.new(2012,1,18),
  :participaciones => 21,
  :country_id => suecia.id,
  :goles => 2)

Player.create(:nombre => "Albin",
  :apellido => "Ekdal",
  :fecha_nacimiento => Date.new(1989,7,28),
  :ciudad_nacimiento => "Estocolmo, Suecia",
  :posicion => "Medio centro",
  :dorsal => 8,
  :apodo => "N/A",
  :debut =>  Date.new(2011,8,10),
  :participaciones => 33,
  :country_id => suecia.id,
  :goles => 0)

Player.create(:nombre => "Sebastian",
  :apellido => "Larsson",
  :fecha_nacimiento => Date.new(1985,6,6),
  :ciudad_nacimiento => "Eskilstuna, Suecia",
  :posicion => "Medio centro",
  :dorsal => 7,
  :apodo => "N/A",
  :debut =>  Date.new(2008,2,6),
  :participaciones => 98,
  :country_id => suecia.id,
  :goles => 6)

Player.create(:nombre => "Marcus",
  :apellido => "Rohdén",
  :fecha_nacimiento => Date.new(1991,5,11),
  :ciudad_nacimiento => "Borås, Suecia",
  :posicion => "Interior derecho",
  :dorsal => 19,
  :apodo => "N/A",
  :debut =>  Date.new(2015,1,15),
  :participaciones => 10,
  :country_id => suecia.id,
  :goles => 1)

Player.create(:nombre => "Viktor",
  :apellido => "Claesson",
  :fecha_nacimiento => Date.new(1992,1,2),
  :ciudad_nacimiento => "Värnamo, Suecia",
  :posicion => "Medio centro ofensivo",
  :dorsal => 17,
  :apodo => "N/A",
  :debut =>  Date.new(2012,1,18),
  :participaciones => 20,
  :country_id => suecia.id,
  :goles => 3)

Player.create(:nombre => "Emil",
  :apellido => "Forsberg",
  :fecha_nacimiento => Date.new(1991,10,23),
  :ciudad_nacimiento => "Sundsvall, Suecia",
  :posicion => "Extremo izquierdo",
  :dorsal => 10,
  :apodo => "N/A",
  :debut =>  Date.new(2014,1,17),
  :participaciones => 35,
  :country_id => suecia.id,
  :goles => 6)

Player.create(:nombre => "Jimmy",
  :apellido => "Durmaz",
  :fecha_nacimiento => Date.new(1989,3,22),
  :ciudad_nacimiento => "Örebro, Suecia",
  :posicion => "Extremo izquierdo",
  :dorsal => 21,
  :apodo => "N/A",
  :debut =>  Date.new(2011,2,8),
  :participaciones => 45,
  :country_id => suecia.id,
  :goles => 3)

Player.create(:nombre => "Marcus",
  :apellido => "Berg",
  :fecha_nacimiento => Date.new(1986,8,17),
  :ciudad_nacimiento => "Torsby, Suecia",
  :posicion => "Delantero centro",
  :dorsal => 9,
  :apodo => "N/A",
  :debut =>  Date.new(2008,2,6),
  :participaciones => 55,
  :country_id => suecia.id,
  :goles => 18)

Player.create(:nombre => "John Alberto",
  :apellido => "Guidetti",
  :fecha_nacimiento => Date.new(1992,4,15),
  :ciudad_nacimiento => "Estocolmo, Suecia",
  :posicion => "Delantero centro",
  :dorsal => 11,
  :apodo => "N/A",
  :debut =>  Date.new(2012,2,29),
  :participaciones => 20,
  :country_id => suecia.id,
  :goles => 1)

Player.create(:nombre => "Isaac",
  :apellido => "Thelin",
  :fecha_nacimiento => Date.new(1985,2,5),
  :ciudad_nacimiento => "Örebro, Suecia",
  :posicion => "Delantero centro",
  :dorsal => 22,
  :apodo => "N/A",
  :debut =>  Date.new(2014,11,15),
  :participaciones => 19,
  :country_id => suecia.id,
  :goles => 2)

Player.create(:nombre => "Ola",
  :apellido => "Toivonen",
  :fecha_nacimiento => Date.new(1986,7,3),
  :ciudad_nacimiento => "Degerfors, Suecia",
  :posicion => "Delantero centro",
  :dorsal => 20,
  :apodo => "N/A",
  :debut =>  Date.new(2007,1,14),
  :participaciones => 57,
  :country_id => suecia.id,
  :goles => 13)