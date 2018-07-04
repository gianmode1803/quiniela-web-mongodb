# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
egi = Country.create(
       :nombre => 'Egipto', 
       :apodo => 'Pharaons',
       :grupo => 'A', 
       :escudo => 'public/countries/EgiLo.png', 
       :bandera => '../assets/banderas/egipto')

@egiG = egi

egi_coa = Coach.create(#Egipto
  :nombre => "Héctor",
  :apellido => "Cúper",
  :apodo => "El Cabezón",
  :fecha_nacimiento => Date.new(1955,11,16),
  :ciudad_nacimiento => "Chabas")

CoachTeam.create(
  :debut => Date.new(2015,3,2),
  :coach_id => egi_coa.id,
  :country_id  => egi.id)


Player.create([{ #Egipto
              :nombre => "Essam",
              :apellido => "El Hadary",
              :fecha_nacimiento => Date.new(1973,1,15),
              :ciudad_nacimiento => "Damieta",
              :posicion => "Portero",
              :dorsal => 1,
              :apodo => "N/A",
              :debut =>  Date.new( 1996,3,26),
              :participaciones => 157,
              :foto => "Picture",
              :goles => 0,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Mohamed",
              :apellido => "El Shenawy",
              :fecha_nacimiento => Date.new(1998,12,18),
              :ciudad_nacimiento => "Al Hamool",
              :posicion => "Portero",
              :dorsal =>  23,
              :apodo => "N/A",
              :debut =>  Date.new(2018,3,26),
              :participaciones => 2,
              :foto => "Picture",
              :goles => 0,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Sherif",
              :apellido => "Ekramy",
              :fecha_nacimiento => Date.new(1983,7,10),
              :ciudad_nacimiento => "Kairo",
              :posicion => "Portero",
              :dorsal => 16,
              :apodo => "N/A",
              :debut =>  Date.new(2006,8,16),
              :participaciones => 24,
              :foto => "Picture",
              :goles => 0,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Ahmed",
              :apellido => "Hegazy",
              :fecha_nacimiento => Date.new(1991,1,25),
              :ciudad_nacimiento => "Ismailia",
              :posicion => "Defensa Central",
              :dorsal => 6,
              :apodo => "N/A",
              :debut =>  Date.new(2011,9,3),
              :participaciones => 44,
              :foto => "Picture",
              :goles => 1,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Ali",
              :apellido => "Gabr",
              :fecha_nacimiento => Date.new(1989,1,10),
              :ciudad_nacimiento => "Alexandria",
              :posicion => "Defensa Central",
              :dorsal => 2,
              :apodo => "N/A",
              :debut =>  Date.new(2014,11,15),
              :participaciones => 22,
              :foto => "Picture",
              :goles => 1,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Saad",
              :apellido => "Samir",
              :fecha_nacimiento => Date.new(1989,4,1),
              :ciudad_nacimiento => "Banha",
              :posicion => "Defensa Central",
              :dorsal =>  20,
              :apodo => "N/A",
              :debut =>  Date.new(2014,11,15),
              :participaciones =>22,
              :foto => "Picture",
              :goles =>  1,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Ayman",
              :apellido => " Ashraf",
              :fecha_nacimiento => Date.new(1991,4,9),
              :ciudad_nacimiento => "Kairo",
              :posicion => "Defensa Central",
              :dorsal => 12,
              :apodo => "N/A",
              :debut =>  Date.new(2016,8,30),
              :participaciones => 4,
              :foto => "Picture",
              :goles =>  1,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Mohamed",
              :apellido => "Abdel-Shafi",
              :fecha_nacimiento => Date.new(1985,7,1),
              :ciudad_nacimiento => "El Marg",
              :posicion => "Lateral Izquierdo",
              :dorsal => 13,
              :apodo => "N/A",
              :debut =>  Date.new(2009,12,29),
              :participaciones => 50,
              :foto => "Picture",
              :goles => 1,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Ahmed",
              :apellido => "Elmohamady",
              :fecha_nacimiento => Date.new(1987,9,9),
              :ciudad_nacimiento => "Basyoun",
              :posicion => "Lateral derecho",
              :dorsal => 3,
              :apodo => "N/A",
              :debut =>  Date.new(2007,8,22),
              :participaciones =>  81,
              :foto => "Picture",
              :goles => 2,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Omar",
              :apellido => "Gaber",
              :fecha_nacimiento => Date.new(1992,1,30),
              :ciudad_nacimiento => "Kairo",
              :posicion => "Lateral Derecho",
              :dorsal => 4,
              :apodo => "N/A",
              :debut =>  Date.new(2011,9,3),
              :participaciones => 21,
              :foto => "Picture",
              :goles => 0,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Mohamed",
              :apellido => "Elneny",
              :fecha_nacimiento => Date.new(1992,7,11),
              :ciudad_nacimiento => "Mahalla",
              :posicion => "Medio Campo - Pivote",
              :dorsal => 17,
              :apodo => "N/A",
              :debut =>  Date.new(2011,9,3),
              :participaciones => 60,
              :foto => "Picture",
              :goles => 5,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Trek",
              :apellido => "Hamed",
              :fecha_nacimiento => Date.new(1998,10,24),
              :ciudad_nacimiento => "Kairo",
              :posicion => "Medio Campo - Pivote",
              :dorsal => 8,
              :apodo => "N/A",
              :debut =>  Date.new(2013,3,7),
              :participaciones => 24,
              :foto => "Picture",
              :goles => 0,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Sam",
              :apellido => "Morsy",
              :fecha_nacimiento => Date.new(1991,9,10),
              :ciudad_nacimiento => "Wolverhampton",
              :posicion => "Medio Centro",
              :dorsal => 5,
              :apodo => "N/A",
              :debut =>  Date.new(2016,8,30),
              :participaciones => 4,
              :foto => "Picture",
              :goles => 0,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Abdallh",
              :apellido => "Said",
              :fecha_nacimiento => Date.new(1985,7,13),
              :ciudad_nacimiento => "Ismailia",
              :posicion => "Medio Campo - Ofensivo",
              :dorsal => 19,
              :apodo => "N/A",
              :debut =>  Date.new(2008,6,14),
              :participaciones => 36,
              :foto => "Picture",
              :goles => 6,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Ramadan",
              :apellido => "Sobhi",
              :fecha_nacimiento => Date.new(1997,1,23),
              :ciudad_nacimiento => "Kairo",
              :posicion => "Extremo Izquierdo",
              :dorsal => 14,
              :apodo => "N/A",
              :debut =>  Date.new(2015,6,14),
              :participaciones => 25,
              :foto => "Picture",
              :goles => 1,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Trezeguet",
              :apellido => "Mohamud",
              :fecha_nacimiento => Date.new(1994,10,1),
              :ciudad_nacimiento => "Kafr El-Sheikh",
              :posicion => "Extremo Izquiero",
              :dorsal => 21,
              :apodo => "N/A",
              :debut =>  Date.new(2014,8,30),
              :participaciones => 25,
              :foto => "Picture",
              :goles => 2,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Amr",
              :apellido => "Ward",
              :fecha_nacimiento => Date.new(1993,9,17),
              :ciudad_nacimiento => "Alexandria",
              :posicion => "Extremo Izquierdo",
              :dorsal => 33,
              :apodo => "N/A",
              :debut =>  Date.new(2015,10,11),
              :participaciones => 17,
              :foto => "Picture",
              :goles => 0,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Mohamud",
              :apellido => "Kahraba",
              :fecha_nacimiento => Date.new(1994,4,13),
              :ciudad_nacimiento => " Kairo",
              :posicion => "Extremo Izquierdo",
              :dorsal => 11,
              :apodo => "N/A",
              :debut =>  Date.new(2013,9,10),
              :participaciones => 21,
              :foto => "Picture",
              :goles => 3,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Mohamed",
              :apellido => " Salah",
              :fecha_nacimiento => Date.new(1992,6,15),
              :ciudad_nacimiento => "Basyoun, El Gharbia",
              :posicion => "Extremo Derecho",
              :dorsal => 10,
              :apodo => "N/A",
              :debut =>  Date.new(2011,9,3),
              :participaciones => 57,
              :foto => "Picture",
              :goles =>  33,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Ahmed",
              :apellido => "Fathi",
              :fecha_nacimiento => Date.new(1984,11,10),
              :ciudad_nacimiento => "Banh",
              :posicion => "Lateral Derecho",
              :dorsal => 7,
              :apodo => "N/A",
              :debut =>  Date.new(2002,12,16),
              :participaciones => 125,
              :foto => "Picture",
              :goles => 3,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Mohamed",
              :apellido => "Hamdi",
              :fecha_nacimiento => Date.new(1995,6,1),
              :ciudad_nacimiento => "Kairo",
              :posicion => "Defensa Central",
              :dorsal => 15,
              :apodo => "N/A",
              :debut =>  Date.new(2018,5,25),
              :participaciones => 1,
              :foto => "Picture",
              :goles => 0,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Shikabala",
              :apellido => "Mohamed",
              :fecha_nacimiento => Date.new(1973,1,15),
              :ciudad_nacimiento => "Asuan",
              :posicion => "Extremo Derecho",
              :dorsal =>  18,
              :apodo => "N/A",
              :debut =>  Date.new(2007,6,3),
              :participaciones => 32,
              :foto => "Picture",
              :goles => 2,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
},
{
              :nombre => "Marwan",
              :apellido => "Mohsen",
              :fecha_nacimiento => Date.new(1989,2,25),
              :ciudad_nacimiento => "Kairo",
              :posicion => "Delantero Derecho",
              :dorsal => 9,
              :apodo => "N/A",
              :debut =>  Date.new(2011,9,3),
              :participaciones => 22,
              :foto => "Picture",
              :goles => 4,
              :country_id => egi.id,
              :created_at => Date.new(2018,6,6),
              :updated_at => Date.new(2018,6,6)
}])

