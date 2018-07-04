# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ing = Country.create(
       :nombre => 'Inglaterra', 
       :apodo => 'The Three Lions', 
       :grupo => 'G',
       :escudo => 'public/countries/IngLo.png', 
       :bandera => '../assets/banderas/inglaterra')

@ingG = ing

ing_coa = Coach.create(#Inglaterra
  :nombre => "Gareth",
  :apellido => "Southgate",
  :apodo => "N/A",
  :fecha_nacimiento => Date.new(1970,9,3),
  :ciudad_nacimiento => "Watford")

CoachTeam.create(
  :debut => Date.new(2016,11,30),
  :coach_id => ing_coa.id,
  :country_id  => ing.id)

Player.create([{#Inglaterra
 
              :nombre => "Jordan ",
              :apellido => "Pickford",
              :fecha_nacimiento => Date.new(1994,3,7),
              :ciudad_nacimiento => "Washington",
              :posicion => "Portero",
              :dorsal => 1,
              :apodo => "N/A",
              :debut =>  Date.new(2017,11,10),
              :participaciones => 3,
              :country_id => ing.id,
              :goles => 0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{ 
              :nombre => "Jack",
              :apellido => "Butland",
              :fecha_nacimiento => Date.new(1993,3,10),
              :ciudad_nacimiento => "Bristol",
              :posicion => "Portero",
              :dorsal => 13,
              :apodo => "N/A",
              :debut =>  Date.new(2012,8,15),
              :participaciones => 8,
              :country_id => ing.id,
              :goles => 0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Nick",
              :apellido => "Pope",
              :fecha_nacimiento => Date.new(1992,4,19),
              :ciudad_nacimiento => "Cambridge",
              :posicion => "Portero",
              :dorsal => 23,
              :apodo => "N/A",
              :debut =>  Date.new(2018,6,7),
              :participaciones => 1,
              :country_id => ing.id,
              :goles => 0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{ 
              :nombre => "John",
              :apellido => "Stones",
              :fecha_nacimiento => Date.new(1994,5,28),
              :ciudad_nacimiento => "Barnsley",
              :posicion => "Defensa Central",
              :dorsal => 5,
              :apodo => "N/A",
              :debut =>  Date.new(2014,5,30),
              :participaciones => 26,
              :country_id => ing.id,
              :goles => 0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
     
              :nombre => "Harry",
              :apellido => "Maguire",
              :fecha_nacimiento => Date.new(1993,3,5),
              :ciudad_nacimiento => "Sheffield",
              :posicion => "Defensa Central",
              :dorsal => 6,
              :apodo => "N/A",
              :debut =>  Date.new(2017,10,8),
              :participaciones => 5,
              :country_id => ing.id,
              :goles =>  0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Phil",
              :apellido => "Jones",
              :fecha_nacimiento => Date.new(1992,2,21),
              :ciudad_nacimiento => "Preston",
              :posicion => "Defensa Central",
              :dorsal => 16,
              :apodo => "N/A",
              :debut =>  Date.new(2011,10,7),
              :participaciones => 25,
              :country_id => ing.id,
              :goles => 0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
    
              :nombre => "Gary",
              :apellido => "Cahill",
              :fecha_nacimiento => Date.new(1985,12,19), 
              :ciudad_nacimiento => "Dronfield",
              :posicion => "Defensa Central",
              :dorsal => 15,
              :apodo => "N/A",
              :debut =>  Date.new(2010,9,3),
              :participaciones =>  60,
              :country_id => ing.id,
              :goles =>  5,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{ 

    
              :nombre => "Danny",
              :apellido => "Rose",
              :fecha_nacimiento => Date.new(1990,7,2),
              :ciudad_nacimiento => "Doncaster",
              :posicion => "Lateral izquierdo",
              :dorsal =>  3,
              :apodo => "N/A",
              :debut =>  Date.new(2016,3,26),
              :participaciones => 18,
              :country_id => ing.id,
              :goles =>  0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{    


              :nombre => "Kyle",
              :apellido => "Walker",
              :fecha_nacimiento => Date.new(1990,5,28),
              :ciudad_nacimiento => "Sheffield",
              :posicion => "Lateral Derecho",
              :dorsal => 2,
              :apodo => "N/A",
              :debut =>  Date.new(2011,11,12),
              :participaciones => 35,
              :country_id => ing.id,
              :goles =>  0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Trent",
              :apellido => "Alexander-Arnold",
              :fecha_nacimiento => Date.new(1998,10,7),
              :ciudad_nacimiento => "Liverpool",
              :posicion => "Lateral Derecho",
              :dorsal => 22,
              :apodo => "N/A",
              :debut =>  Date.new(2018,6,7),
              :participaciones => 1,
              :country_id => ing.id,
              :goles =>  0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{ 
              :nombre => "Kieran",
              :apellido => "Trippier",
              :fecha_nacimiento => Date.new(1990,9,19),
              :ciudad_nacimiento => "Bury",
              :posicion => "Lateral derecho",
              :dorsal => 12,
              :apodo => "N/A",
              :debut =>  Date.new(2017,6,13),
              :participaciones => 7,
              :country_id => ing.id,
              :goles =>  0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{ 
              :nombre => "Eric",
              :apellido => "Dier",
              :fecha_nacimiento => Date.new(1994,1,15),
              :ciudad_nacimiento => "Cheltenham",
              :posicion => "Pivote",
              :dorsal => 4,
              :apodo => "N/A",
              :debut =>  Date.new(2015,11,13),
              :participaciones =>  26,
              :country_id => ing.id,
              :goles =>  3,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{ 
              :nombre => "Jordan",
              :apellido => "Henderson",
              :fecha_nacimiento => Date.new(1990,6,17),
              :ciudad_nacimiento => "Sunderland",
              :posicion => "Medio centro",
              :dorsal => 8,
              :apodo => "N/A",
              :debut =>  Date.new(2010,11,17),
              :participaciones =>  39,
              :country_id => ing.id,
              :goles =>  0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{ 
              :nombre => "Fabian",
              :apellido => "SheDelphhu",
              :fecha_nacimiento => Date.new(1989,11,21),
              :ciudad_nacimiento => "Bradford",
              :posicion => "Medio centro",
              :dorsal => 17,
              :apodo => "N/A",
              :debut =>  Date.new(2014,9,3),
              :participaciones => 11,
              :country_id => ing.id,
              :goles =>  0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{    

              :nombre => "Ruben",
              :apellido => "Loftus-Cheek",
              :fecha_nacimiento => Date.new(1996,1,23),
              :ciudad_nacimiento => "London",
              :posicion => "Medio Centro",
              :dorsal => 21,
              :apodo => "N/A",
              :debut =>  Date.new(2017,11,10),
              :participaciones => 4,
              :country_id => ing.id,
              :goles => 0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{

              :nombre => "Ashley",
              :apellido => "Young",
              :fecha_nacimiento => Date.new(1985,7,9),
              :ciudad_nacimiento => "Stevenage",
              :posicion => "Interior izquierdo",
              :dorsal => 18,
              :apodo => "N/A",
              :debut =>  Date.new(2007,11,16),
              :participaciones =>  34,
              :country_id => ing.id,
              :goles =>  7,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{     	 


              :nombre => "Dele",
              :apellido => "Alli",
              :fecha_nacimiento => Date.new(1996,4,11),
              :ciudad_nacimiento => "Milton Keynes",
              :posicion => "Medio centro ofensivo",
              :dorsal => 20,
              :apodo => "N/A",
              :debut =>  Date.new(2015,10,9),
              :participaciones =>  25,
              :country_id => ing.id,
              :goles => 2,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{   
              :nombre => "Jesse",
              :apellido => "Lingard",
              :fecha_nacimiento => Date.new(1992,12,15),
              :ciudad_nacimiento => "Warrington",
              :posicion => "Extremo izquierdo",
              :dorsal => 7,
              :apodo => "N/A",
              :debut =>  Date.new(2016,10,8),
              :participaciones => 12,
              :country_id => ing.id,
              :goles =>  1,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{ 

    
              :nombre => "Raheem",
              :apellido => "Sterling",
              :fecha_nacimiento => Date.new(1994,12,8),
              :ciudad_nacimiento => "Kingston",
              :posicion => "Extremo derecho",
              :dorsal => 10,
              :apodo => "N/A",
              :debut =>  Date.new(2012,11,14),
              :participaciones =>  38,
              :country_id => ing.id,
              :goles =>  2,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{ 
              :nombre => "Harry",
              :apellido => "Kane",
              :fecha_nacimiento => Date.new(1993,7,28),
              :ciudad_nacimiento => "London",
              :posicion => "Delantero centro",
              :dorsal => 9,
              :apodo => "N/A",
              :debut =>  Date.new(2015,3,27),
              :participaciones => 24,
              :country_id => ing.id,
              :goles =>  13,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Marcus",
              :apellido => "Rashford",
              :fecha_nacimiento => Date.new(1997,10,31),
              :ciudad_nacimiento => "Manchester",
              :posicion => "Delantero centro",
              :dorsal => 19,
              :apodo => "N/A",
              :debut =>  Date.new(2016,5,27),
              :participaciones =>  19,
              :country_id => ing.id,
              :goles => 3,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{   
     
              :nombre => "Jamie",
              :apellido => "Vardy",
              :fecha_nacimiento => Date.new(1987,1,11),
              :ciudad_nacimiento => "Sheffield",
              :posicion => "Delantero Centro",
              :dorsal => 11,
              :apodo => "N/A",
              :debut =>  Date.new(2015,6,7),
              :participaciones =>  22,
              :country_id => ing.id,
              :goles =>  7,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{

              :nombre => "Danny",
              :apellido => "Welbeck",
              :fecha_nacimiento => Date.new(1990,11,26),
              :ciudad_nacimiento => "Manchester",
              :posicion => "Delantero Centro",
              :dorsal => 14,
              :apodo => "N/A",
              :debut =>  Date.new(2011,3,29),
              :participaciones =>  39,
              :country_id => ing.id,
              :goles =>  16,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
}])
