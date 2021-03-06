# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
fran = Country.create(
       :nombre => 'Francia', 
       :apodo => 'Les Bleus', 
       :grupo => 'C', 
       :escudo => 'public/countries/FraLo.png', 
       :bandera => '../assets/banderas/francia')

@franG = fran

fran_coa =  Coach.create(#Francia
  :nombre => "Didier",
  :apellido => "Deschamps",
  :apodo => "N/A",
  :fecha_nacimiento => Date.new(1968,10,15),
  :ciudad_nacimiento => "Bayona")

CoachTeam.create(
  :debut => Date.new(2012,7,8),
  :coach_id => fran_coa.id,
  :country_id  => fran.id)

Player.create([{#Francia
              :nombre => "Hugo",
              :apellido => "Lloris",
              :fecha_nacimiento => Date.new(1986,12,26),
              :ciudad_nacimiento => "Nizza",
              :posicion => "Portero",
              :dorsal => 1,
              :apodo => "N/A",
              :debut =>  Date.new(2008,11,19),
              :participaciones => 96,
              :country_id => fran.id,
              :goles => 0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Alphonse",
              :apellido => "Areola",
              :fecha_nacimiento => Date.new(1993,2,27),
              :ciudad_nacimiento => "Paris",
              :posicion => "Portero",
              :dorsal => 23,
              :apodo => "N/A",
              :debut =>  Date.new(2018,7,16),
              :participaciones => 0,
              :country_id => fran.id,
              :goles => 0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Steve",
              :apellido => "Mandanda",
              :fecha_nacimiento => Date.new(1985,3,28),
              :ciudad_nacimiento => "Kinshasa",
              :posicion => "Portero",
              :dorsal => 16,
              :apodo => "N/A",
              :debut =>  Date.new(2008,5,27),
              :participaciones => 27,
              :country_id => fran.id,
              :goles => 0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Raphaël",
              :apellido => "Varane",
              :fecha_nacimiento => Date.new(1993,4,25),
              :ciudad_nacimiento => "Lille",
              :posicion => "Defensa Central",
              :dorsal => 4,
              :apodo => "N/A",
              :debut =>  Date.new(2013,3,22),
              :participaciones => 41,
              :country_id => fran.id,
              :goles => 2,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Samuel",
              :apellido => "Umtiti",
              :fecha_nacimiento => Date.new(1993,11,14),
              :ciudad_nacimiento => "Yaoundé",
              :posicion => "Defensa Central",
              :dorsal =>  5,
              :apodo => "N/A",
              :debut =>  Date.new(2016,7,3),
              :participaciones =>  17,
              :country_id => fran.id,
              :goles =>  1,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Benjamin",
              :apellido => "Pavard",
              :fecha_nacimiento => Date.new(1996,3,28),
              :ciudad_nacimiento => "Maubeuge",
              :posicion => "Defensa Central",
              :dorsal => 2,
              :apodo => "N/A",
              :debut =>  Date.new(2017,11,10),
              :participaciones => 4,
              :country_id => fran.id,
              :goles => 0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Presnel",
              :apellido => "Kimpembe",
              :fecha_nacimiento => Date.new(1995,8,13),
              :ciudad_nacimiento => "Beaumont-sur-Oise",
              :posicion => "Defensa Central",
              :dorsal => 3,
              :apodo => "N/A",
              :debut =>  Date.new(2018,3,27),
              :participaciones =>  2,
              :country_id => fran.id,
              :goles =>  0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Adil",
              :apellido => "Rami",
              :fecha_nacimiento => Date.new(1989,3,21),
              :ciudad_nacimiento => "Bastia",
              :posicion => "Defensa central",
              :dorsal =>  17,
              :apodo => "N/A",
              :debut =>  Date.new(2010,8,11),
              :participaciones => 34,
              :country_id => fran.id,
              :goles =>  1,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Benjamin",
              :apellido => "Mendy",
              :fecha_nacimiento => Date.new(1994,7,17),
              :ciudad_nacimiento => "Longjumeau",
              :posicion => "Lateral Izquierdo",
              :dorsal =>  22,
              :apodo => "N/A",
              :debut =>  Date.new(2017,3,25),
              :participaciones => 5,
              :country_id => fran.id,
              :goles =>  0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Lucas",
              :apellido => "Hernández",
              :fecha_nacimiento => Date.new(1996,2,14),
              :ciudad_nacimiento => "Marseille",
              :posicion => "Lateral Izquierdo",
              :dorsal =>  21,
              :apodo => "N/A",
              :debut =>  Date.new(2018,3,23),
              :participaciones =>  3,
              :country_id => fran.id,
              :goles =>  0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Djibril",
              :apellido => "Sidibé",
              :fecha_nacimiento => Date.new(1992,7,29),
              :ciudad_nacimiento => "Troyes",
              :posicion => "Lateral Derecho",
              :dorsal =>  19,
              :apodo => "N/A",
              :debut =>  Date.new(2016,9,1),
              :participaciones => 16,
              :country_id => fran.id,
              :goles =>  1,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "N'Golo",
              :apellido => "Kanté",
              :fecha_nacimiento => Date.new(1991,3,29),
              :ciudad_nacimiento => "Paris",
              :posicion => "Pivote",
              :dorsal =>  13,
              :apodo => "N/A",
              :debut =>  Date.new(2016,3,25),
              :participaciones =>  22,
              :country_id => fran.id,
              :goles =>  1,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Steven",
              :apellido => "Nzonzi",
              :fecha_nacimiento => Date.new(1988,12,15),
              :ciudad_nacimiento => "Colombes",
              :posicion => "Pivote",
              :dorsal =>  15,
              :apodo => "N/A",
              :debut =>  Date.new(2017,11,10),
              :participaciones =>  3,
              :country_id => fran.id,
              :goles =>  0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Paul",
              :apellido => "Pogba",
              :fecha_nacimiento => Date.new(1993,3,15),
              :ciudad_nacimiento => "Lagny-sur-Marne",
              :posicion => "Medio Centro",
              :dorsal =>  6,
              :apodo => "N/A",
              :debut =>  Date.new(2013,8,14),
              :participaciones => 52,
              :country_id => fran.id,
              :goles =>  9,
              :created_at => Date.new(2013,3.22),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Corentin",
              :apellido => "Tolisso",
              :fecha_nacimiento => Date.new(1994,8,6),
              :ciudad_nacimiento => "Tarare",
              :posicion => "Medio Centro",
              :dorsal =>  12,
              :apodo => "N/A",
              :debut =>  Date.new(2017,3,28),
              :participaciones => 7,
              :goles =>  0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Blaise",
              :apellido => "Matuidi",
              :fecha_nacimiento => Date.new(1987,4,9),
              :ciudad_nacimiento => "Toulouse",
              :posicion => "Medio Centro",
              :dorsal => 14,
              :apodo => "N/A",
              :debut =>  Date.new(2010,9,7),
              :participaciones =>  65,
              :country_id => fran.id,
              :goles =>  9,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Nabil",
              :apellido => "Fekir",
              :fecha_nacimiento => Date.new(1993,7,18),
              :ciudad_nacimiento => "Lyon",
              :posicion => "Medio Centro Ofensivo",
              :dorsal =>  18,
              :apodo => "N/A",
              :debut =>  Date.new(2015,3,26),
              :participaciones =>  11,
              :country_id => fran.id,
              :goles =>  2,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Thomas",
              :apellido => "Lemar",
              :fecha_nacimiento => Date.new(1995,11,12),
              :ciudad_nacimiento => "Baie-Mahault",
              :posicion => "Extremo izquierdo",
              :dorsal =>  8,
              :apodo => "N/A",
              :debut =>  Date.new(2016,11,15),
              :participaciones =>  16,
              :country_id => fran.id,
              :goles =>  3,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Kylian",
              :apellido => "Mbappé",
              :fecha_nacimiento => Date.new(1998,12,20),
              :ciudad_nacimiento => "Bondy",
              :posicion => "Extremo derecho",
              :dorsal =>  10,
              :apodo => "N/A",
              :debut =>  Date.new(2016,5,29),
              :participaciones =>  13,
              :country_id => fran.id,
              :goles =>  3,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Ousmane",
              :apellido => "Dembélé",
              :fecha_nacimiento => Date.new(1997,5,15),
              :ciudad_nacimiento => "Vernon",
              :posicion => "Extremo Derecho",
              :dorsal =>  11,
              :apodo => "N/A",
              :debut =>  Date.new(2016,9,1),
              :participaciones => 10,
              :country_id => fran.id,
              :goles =>  1,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Florian",
              :apellido => "Thauvin",
              :fecha_nacimiento => Date.new(1993,1,26),
              :ciudad_nacimiento => "Orléans",
              :posicion => "Extremo Derecho",
              :dorsal =>  20,
              :apodo => "N/A",
              :debut =>  Date.new(2017,6,2),
              :participaciones =>  4,
              :country_id => fran.id,
              :goles =>  0,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Antoine",
              :apellido => "Griezmann",
              :fecha_nacimiento => Date.new(1991,3,21),
              :ciudad_nacimiento => "Mâcon",
              :posicion => "Delantero Centro",
              :dorsal =>  7,
              :apodo => "N/A",
              :debut =>  Date.new(2014,3,5),
              :participaciones =>  52,
              :country_id => fran.id,
              :goles =>  19,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Olivier",
              :apellido => "Giroud",
              :fecha_nacimiento => Date.new(1986,9,30),
              :ciudad_nacimiento => "Chambéry",
              :posicion => "Delantero Centro",
              :dorsal =>  9,
              :apodo => "N/A",
              :debut =>  Date.new(2011,11,11),
              :participaciones =>  72,
              :country_id => fran.id,
              :goles =>  31,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
}])
