# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
esp = Country.create(
       :nombre => 'España', 
       :apodo => 'La Roja', 
       :grupo => 'B', 
       :escudo => 'public/countries/EspLo.png', 
       :bandera => '../assets/banderas/espana')

@espG = esp

esp_coa = Coach.create(#Espana
  :nombre => "Julen",
  :apellido => "Lopetegui",
  :apodo => "N/A",
  :fecha_nacimiento => Date.new(1966,8,28),
  :ciudad_nacimiento => "Asteasu")

CoachTeam.create(
  :debut => Date.new(2016,7,21),
  :coach_id => esp_coa.id,
  :country_id  => esp.id)


Player.create([{#España
              :nombre => "David",
              :apellido => "De Gea",
              :fecha_nacimiento => Date.new(1990,11,7),
              :ciudad_nacimiento => "Madrid",
              :posicion => "Portero",
              :dorsal => 1,
              :apodo => "N/A",
              :debut =>  Date.new(2014,6,7),
              :participaciones => 27,
              :foto => "Picture",
              :goles => 0,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Kepa",
              :apellido => "Arrizabalaga",
              :fecha_nacimiento => Date.new(1994,10,3),
              :ciudad_nacimiento => "Andorra",
              :posicion => "Portero",
              :dorsal => 13,
              :apodo => "N/A",
              :debut =>  Date.new(2017,11,11),
              :participaciones => 1,
              :foto => "Picture",
              :goles => 0,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Jose Manuel",
              :apellido => "Reina Páez",
              :fecha_nacimiento => Date.new(1994,10,3),
              :ciudad_nacimiento => "Madrid",
              :posicion => "Portero",
              :foto => "Picture",
              :dorsal => 23,
              :apodo => "Pepe",
              :debut =>  Date.new(2005,8,17),
              :participaciones => 38,
              :goles => 0,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Gerard",
              :apellido => "Pique",
              :fecha_nacimiento => Date.new(1987,2,2),
              :ciudad_nacimiento => "Barcelona",
              :posicion => "Defensa Central",
              :dorsal => 3,
              :apodo => "N/A",
              :debut =>  Date.new(2009,2,11),
              :participaciones => 96,
              :foto => "Picture",
              :goles => 5,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Sergio",
              :apellido => "Ramos",
              :fecha_nacimiento => Date.new(1986,3,30),
              :ciudad_nacimiento => "Sevilla",
              :posicion => "Defensa Central",
              :dorsal =>  14,
              :apodo => "N/A",
              :debut =>  Date.new(2005,3,26),
              :participaciones =>  155,
              :foto => "Picture",
              :goles =>  13,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Cesar",
              :apellido => "Azpilicueta",
              :fecha_nacimiento => Date.new(1989,8,29),
              :ciudad_nacimiento => "Pamplona",
              :posicion => "Defensa Central",
              :dorsal => 14,
              :apodo => "N/A",
              :debut =>  Date.new(2013,2,6),
              :participaciones => 21,
              :foto => "Picture",
              :goles => 0,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Nacho",
              :apellido => "Fernandez",
              :fecha_nacimiento => Date.new(1990,1,18),
              :ciudad_nacimiento => "Madrid",
              :posicion => "Defensa Central",
              :dorsal => 4,
              :apodo => "N/A",
              :debut =>  Date.new(2013,9,10),
              :participaciones =>  15,
              :foto => "Picture",
              :goles =>  0,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
              
},
{
              :nombre => "Jordi",
              :apellido => "Alba",
              :fecha_nacimiento => Date.new(1989,3,21),
              :ciudad_nacimiento => "Barcelona",
              :posicion => "Lateral Izquierdo",
              :dorsal =>  18,
              :apodo => "N/A",
              :debut =>  Date.new(2011,10,11),
              :participaciones => 60,
              :foto => "Picture",
              :goles =>  8,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Nacho",
              :apellido => "Monreal",
              :fecha_nacimiento => Date.new(1986,2,26),
              :ciudad_nacimiento => "Pamplona",
              :posicion => "Lateral Izquierdo",
              :dorsal =>  16,
              :apodo => "N/A",
              :debut =>  Date.new(2009,8,12),
              :participaciones => 21,
              :foto => "Picture",
              :goles =>  1,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Daniel",
              :apellido => "Carvajal",
              :fecha_nacimiento => Date.new(1992,1,11),
              :ciudad_nacimiento => "Leganes",
              :posicion => "Lateral Derecho",
              :dorsal =>  2,
              :apodo => "N/A",
              :debut =>  Date.new(2014,9,4),
              :participaciones =>  15,
              :foto => "Picture",
              :goles =>  0,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Alvaro",
              :apellido => "Odriozola",
              :fecha_nacimiento => Date.new(1995,12,14),
              :ciudad_nacimiento => "San Sebastian",
              :posicion => "Lateral Derecho",
              :dorsal =>  12,
              :apodo => "N/A",
              :debut =>  Date.new(2017,10,6),
              :participaciones => 2,
              :foto => "Picture",
              :goles =>  0,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Serguio",
              :apellido => "Busquets",
              :fecha_nacimiento => Date.new(1995,12,14),
              :ciudad_nacimiento => "Sabadell",
              :posicion => "Pivote",
              :dorsal =>  5,
              :apodo => "N/A",
              :debut =>  Date.new(2009,4,1),
              :participaciones =>  102,
              :foto => "Picture",
              :goles =>  2,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Saul",
              :apellido => "Niguez",
              :fecha_nacimiento => Date.new(1994,11,21),
              :ciudad_nacimiento => "Elche",
              :posicion => "Medio Centro",
              :dorsal =>  7,
              :apodo => "N/A",
              :debut =>  Date.new(2016,9,1),
              :participaciones =>  9,
              :foto => "Picture",
              :goles =>  0,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Jorge",
              :apellido => "Merodio",
              :fecha_nacimiento => Date.new(1992,1,8),
              :ciudad_nacimiento => "Madrid",
              :posicion => "Medio Centro",
              :dorsal =>  8,
              :apodo => "Koke",
              :debut =>  Date.new(2013,8,14),
              :participaciones => 38,
              :foto => "Picture",
              :goles =>  0,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Thiago",
              :apellido => "Alcantara",
              :fecha_nacimiento => Date.new(1991,4,11),
              :ciudad_nacimiento => "San Pietro Verotico",
              :posicion => "Medio Centro",
              :dorsal =>  10,
              :apodo => "N/A",
              :debut =>  Date.new(2011,8,10),
              :participaciones => 27,
              :foto => "Picture",
              :goles =>  2,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Andres",
              :apellido => "Iniesta",
              :fecha_nacimiento => Date.new(1984,5,11),
              :ciudad_nacimiento => "Fuentea Billa",
              :posicion => "Medio Centro",
              :dorsal => 6,
              :apodo => "N/A",
              :debut =>  Date.new(2006,5,27),
              :participaciones =>  129,
              :foto => "Picture",
              :goles =>  13,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Francisco",
              :apellido => "Alarcon",
              :fecha_nacimiento => Date.new(1992,4,21),
              :ciudad_nacimiento => "Benalmadena",
              :posicion => "Medio Centro Ofensivo",
              :dorsal =>  21,
              :apodo => "Isco",
              :debut =>  Date.new(2013,2,6),
              :participaciones =>  27,
              :foto => "Picture",
              :goles =>  10,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "David",
              :apellido => "Silva",
              :fecha_nacimiento => Date.new(1986,1,8),
              :ciudad_nacimiento => "Arguineguin",
              :posicion => "Medio Centro Ofensivo",
              :dorsal =>  21,
              :apodo => "N/A",
              :debut =>  Date.new(2006,11,15),
              :participaciones =>  122,
              :foto => "Picture",
              :goles =>  35,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Marco",
              :apellido => "Asensio",
              :fecha_nacimiento => Date.new(1996,1,21),
              :ciudad_nacimiento => "Palma de Mallorca",
              :posicion => "Extremo Izquierdo",
              :dorsal =>  20,
              :apodo => "N/A",
              :debut =>  Date.new(2016,5,29),
              :participaciones =>  10,
              :foto => "Picture",
              :goles =>  0,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Lucas",
              :apellido => "Vazquez",
              :fecha_nacimiento => Date.new(1991,7,1),
              :ciudad_nacimiento => "A Coruña",
              :posicion => "Extremo Derecho",
              :dorsal =>  11,
              :apodo => "N/A",
              :debut =>  Date.new(2016,6,7),
              :participaciones => 5,
              :foto => "Picture",
              :goles =>  0,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Lago",
              :apellido => "Aspas",
              :fecha_nacimiento => Date.new(1987,8,1),
              :ciudad_nacimiento => "Moaña",
              :posicion => "Extremo Derecho",
              :dorsal =>  17,
              :apodo => "N/A",
              :debut =>  Date.new(2016,11,15),
              :participaciones =>  8,
              :foto => "Picture",
              :goles =>  4,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Diego",
              :apellido => "Costa",
              :fecha_nacimiento => Date.new(1988,10,7),
              :ciudad_nacimiento => "Lagarto",
              :posicion => "Delantero Centro",
              :dorsal =>  19,
              :apodo => "N/A",
              :debut =>  Date.new(2014,3,5),
              :participaciones =>  18,
              :foto => "Picture",
              :goles =>  7,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Rodrigo",
              :apellido => "Moreno",
              :fecha_nacimiento => Date.new(1991,3,6),
              :ciudad_nacimiento => "Rio de Janerio",
              :posicion => "Delantero Centro",
              :dorsal =>  9,
              :apodo => "N/A",
              :debut =>  Date.new(2014,10,12),
              :participaciones =>  4,
              :foto => "Picture",
              :goles =>  2,
              :country_id => esp.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
}])
