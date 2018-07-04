# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
isl = Country.create(
       :nombre => 'Islandia', 
       :apodo => 'Los Vikingos', 
       :grupo => 'D',
       :escudo => 'public/countries/IslLo.png', 
       :bandera => '../assets/banderas/islandia')

@islG = isl

isl_coa = Coach.create(#Islandia
  :nombre => "Heimir",
  :apellido => "Hallgrímsson",
  :apodo => "N/A",
  :fecha_nacimiento => Date.new(1967,6,10),
  :ciudad_nacimiento => "Islas-Vestman")

CoachTeam.create(
  :debut => Date.new(2013,11,25),
  :coach_id => isl_coa.id,
  :country_id  => isl.id)

Player.create([#Porteros
{
              :nombre => "Hannes",
              :apellido => "Halldórsson",
              :fecha_nacimiento => Date.new(1984,4,27),
              :ciudad_nacimiento => "Reykjavik",
              :posicion => "Portero",
              :dorsal => 1,
              :apodo => "N/A",
              :debut =>  Date.new(2011,9,6),
              :participaciones => 48,
              :goles => 0,
              :country_id => isl.id
},

{
              :nombre => "Rúnar",
              :apellido => "Rúnarsson",
              :fecha_nacimiento => Date.new(1995,2,18),
              :ciudad_nacimiento => "Reykjavik",
              :posicion => "Portero",
              :dorsal => 13,
              :apodo => "N/A",
              :debut =>  Date.new(2017,11,8),
              :participaciones => 3,
              :goles => 0,
              :country_id => isl.id
},

{
              :nombre => "Frederik",
              :apellido => "Schram",
              :fecha_nacimiento => Date.new(1995,1,19),
              :ciudad_nacimiento => "Dragør",
              :posicion => "Portero",
              :dorsal => 12,
              :apodo => "N/A",
              :debut =>  Date.new(2017,2,8),
              :participaciones => 4,
              :goles => 0,
              :country_id => isl.id
},

#Defensa

{
              :nombre => "Birkir",
              :apellido => "Sævarsson",
              :fecha_nacimiento => Date.new(1984,11,11),
              :ciudad_nacimiento => "Reykjavik",
              :posicion => "Lateral derecho",
              :dorsal => 2,
              :apodo => "N/A",
              :debut =>  Date.new(2007,6,2),
              :participaciones => 79,
              :goles => 1,
              :country_id => isl.id
},

{
              :nombre => "Samúel",
              :apellido => "Friðjónsson",
              :fecha_nacimiento => Date.new(1996,2,22),
              :ciudad_nacimiento => "Reykjavik",
              :posicion => "Pivote",
              :dorsal => 28,
              :apodo => "N/A",
              :debut =>  Date.new(2018,1,11),
              :participaciones => 4,
              :goles => 0,
              :country_id => isl.id
},

{
              :nombre => "Sverrir",
              :apellido => "Ingason",
              :fecha_nacimiento => Date.new(1993,8,5),
              :ciudad_nacimiento => "Kópavogur",
              :posicion => "Defensa central",
              :dorsal => 5,
              :apodo => "N/A",
              :debut =>  Date.new(2014,1,21),
              :participaciones => 19,
              :goles => 3,
              :country_id => isl.id
},

{
              :nombre => "Ragnar",
              :apellido => "Sigurðsson",
              :fecha_nacimiento => Date.new(1986,6,19),
              :ciudad_nacimiento => "Reykjavik",
              :posicion => "Defensa central",
              :dorsal => 6,
              :apodo => "N/A",
              :debut =>  Date.new(2007,8,22),
              :participaciones => 76,
              :goles => 3,
              :country_id => isl.id
},

{
              :nombre => "Kári",
              :apellido => "Árnason",
              :fecha_nacimiento => Date.new(1982,1,13),
              :ciudad_nacimiento => "Gotemburgo",
              :posicion => "Defensa central",
              :dorsal => 14,
              :apodo => "N/A",
              :debut =>  Date.new(2005,3,3),
              :participaciones => 66,
              :goles => 4,
              :country_id => isl.id
},

{
              :nombre => "Hólmar",
              :apellido => "Eyjólfsson",
              :fecha_nacimiento => Date.new(1990,8,6),
              :ciudad_nacimiento => "Sauðárkrókur",
              :posicion => "Defensa central",
              :dorsal => 15,
              :apodo => "N/A",
              :debut =>  Date.new(2012,5,30),
              :participaciones => 9,
              :goles => 1,
              :country_id => isl.id
},

{
              :nombre => "Hörður",
              :apellido => "Magnússon",
              :fecha_nacimiento => Date.new(1993,2,11),
              :ciudad_nacimiento => "Reykjavik",
              :posicion => "Defensa central",
              :dorsal => 18,
              :apodo => "N/A",
              :debut =>  Date.new(2014,11,12),
              :participaciones => 16,
              :goles => 2,
              :country_id => isl.id
},

{
              :nombre => "Ari",
              :apellido => "Skúlason",
              :fecha_nacimiento => Date.new(1987,5,14),
              :ciudad_nacimiento => "Reykjavik",
              :posicion => "Lateral izquierdo",
              :dorsal => 23,
              :apodo => "N/A",
              :debut =>  Date.new(2009,11,10),
              :participaciones => 55,
              :goles => 0,
              :country_id => isl.id
},

#Centrocampista

{
              :nombre => "Albert",
              :apellido => "Guðmundsson",
              :fecha_nacimiento => Date.new(1997,6,15),
              :ciudad_nacimiento => "Reykjavik",
              :posicion => "Extremo derecho",
              :dorsal => 4,
              :apodo => "N/A",
              :debut =>  Date.new(2017,1,10),
              :participaciones => 5,
              :goles => 3,
              :country_id => isl.id
},

{
              :nombre => "Jóhann",
              :apellido => "Guðmundsson",
              :fecha_nacimiento => Date.new(1990,9,27),
              :ciudad_nacimiento => "Reykjavik",
              :posicion => "Extremo derecho",
              :dorsal => 7,
              :apodo => "N/A",
              :debut =>  Date.new(2008,8,20),
              :participaciones => 66,
              :goles => 6,
              :country_id => isl.id
},

{
              :nombre => "Birkir",
              :apellido => "Bjarnason",
              :fecha_nacimiento => Date.new(1988,5,27),
              :ciudad_nacimiento => "Akureyri",
              :posicion => "Medio centro",
              :dorsal => 8,
              :apodo => "N/A",
              :debut =>  Date.new(2010,5,29),
              :participaciones => 66,
              :goles => 9,
              :country_id => isl.id
},

{
              :nombre => "Gylfi",
              :apellido => "Sigurðsson",
              :fecha_nacimiento => Date.new(1989,9,8),
              :ciudad_nacimiento => "Hafnarfjörður",
              :posicion => "Medio centro ofensivo",
              :dorsal => 10,
              :apodo => "N/A",
              :debut =>  Date.new(2010,5,29),
              :participaciones => 56,
              :goles => 9,
              :country_id => isl.id
},

{
              :nombre => "Ólafur",
              :apellido => "Skúlason",
              :fecha_nacimiento => Date.new(1983,4,1),
              :ciudad_nacimiento => "Reykjavik",
              :posicion => "Pivote",
              :dorsal => 16,
              :apodo => "N/A",
              :debut =>  Date.new(2003,11,20),
              :participaciones => 35,
              :goles => 1,
              :country_id => isl.id
},

{
              :nombre => "Aron",
              :apellido => "Gunnarsson",
              :fecha_nacimiento => Date.new(1989,4,22),
              :ciudad_nacimiento => "Akureyri",
              :posicion => "Medio centro",
              :dorsal => 17,
              :apodo => "N/A",
              :debut =>  Date.new(2008,2,2),
              :participaciones => 77,
              :goles => 2,
              :country_id => isl.id
},

{
              :nombre => "Rúrik",
              :apellido => "Gíslason",
              :fecha_nacimiento => Date.new(1988,2,25),
              :ciudad_nacimiento => "Reykjavik",
              :posicion => "Extremo derecho",
              :dorsal => 19,
              :apodo => "N/A",
              :debut =>  Date.new(2009,3,22),
              :participaciones => 46,
              :goles => 3,
              :country_id => isl.id
},

{
              :nombre => "Emil",
              :apellido => "Hallfreðsson",
              :fecha_nacimiento => Date.new(1984,6,29),
              :ciudad_nacimiento => "Hafnarfjörður",
              :posicion => "Medio centro",
              :dorsal => 20,
              :apodo => "N/A",
              :debut =>  Date.new(2005,3,30),
              :participaciones => 63,
              :goles => 1,
              :country_id => isl.id
},

{
              :nombre => "Arnór",
              :apellido => "Traustason",
              :fecha_nacimiento => Date.new(1993,4,30),
              :ciudad_nacimiento => "Njarðvík",
              :posicion => "Interior izquierdo",
              :dorsal => 21,
              :apodo => "N/A",
              :debut =>  Date.new(2015,11,13),
              :participaciones => 18,
              :goles => 5,
              :country_id => isl.id
},

{
              :nombre => "Björn",
              :apellido => "Sigurðarson",
              :fecha_nacimiento => Date.new(1991,2,26),
              :ciudad_nacimiento => "Akranes",
              :posicion => "Delantero centro",
              :dorsal => 9,
              :apodo => "N/A",
              :debut =>  Date.new(2011,9,6),
              :participaciones => 12,
              :goles => 1,
              :country_id => isl.id
},

{
              :nombre => "Alfreð",
              :apellido => "Finnbogason",
              :fecha_nacimiento => Date.new(1989,2,1),
              :ciudad_nacimiento => "Reikiavik",
              :posicion => "Delantero centro",
              :dorsal => 11,
              :apodo => "N/A",
              :debut =>  Date.new(2010,3,21),
              :participaciones => 46,
              :goles => 12,
              :country_id => isl.id
},

{
              :nombre => "Jón",
              :apellido => "Böðvarsson",
              :fecha_nacimiento => Date.new(1992,5,25),
              :ciudad_nacimiento => "Selfoss",
              :posicion => "Delantero centro",
              :dorsal => 22,
              :apodo => "N/A",
              :debut =>  Date.new(2012,11,14),
              :participaciones => 37,
              :goles => 2,
              :country_id => isl.id
},
])
