# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

aus = Country.create(:nombre => 'Australia', 
    :apodo => 'Socceroos', 
    :grupo => 'C', 
    :escudo => 'public/countries/AusLo.png', 
    :bandera => '../assets/banderas/australia')

@ausG = aus

aus_coa = Coach.create(#Australia
  :nombre => "Lambertus",
  :apellido => "van Marwijk",
  :apodo => "Bert",
  :fecha_nacimiento => Date.new(1952,5,19),
  :ciudad_nacimiento => "Overijssel")

CoachTeam.create(
  :debut => Date.new(2018,1,25),
  :coach_id => aus_coa.id,
  :country_id  => aus.id)

Player.create([
  {
                :nombre => "Mathew",
                :apellido => "Ryan",
                :fecha_nacimiento => Date.new(1992,4,8),
                :ciudad_nacimiento => "Sydney",
                :posicion => "Portero",
                :dorsal => 1,
                :apodo => "Maty, Matt",
                :debut =>  Date.new(2012,12,5),
                :participaciones => 43,
                :goles => 0,
                :country_id => aus.id
  },

  {
                :nombre => "Brad",
                :apellido => "Jones",
                :fecha_nacimiento => Date.new(1982,3,19),
                :ciudad_nacimiento => "Peth",
                :posicion => "Portero",
                :dorsal => 12,
                :apodo => "N/A",
                :debut =>  Date.new(2007,6,2),
                :participaciones => 5,
                :goles => 0,
                :country_id => aus.id
  },

  {
                :nombre => "Danny",
                :apellido => "Vukovic",
                :fecha_nacimiento => Date.new(1985,3,27),
                :ciudad_nacimiento => "Sydney",
                :posicion => "Portero",
                :dorsal => 18,
                :apodo => "N/A",
                :debut =>  Date.new(2018,3,28),
                :participaciones => 1,
                :goles => 0,
                :country_id => aus.id
  },

  {
                :nombre => "Matthew",
                :apellido => "Jurman",
                :fecha_nacimiento => Date.new(1989,12,8),
                :ciudad_nacimiento => "Wollongong",
                :posicion => "Defensa central",
                :dorsal => 6,
                :apodo => "N/A",
                :debut =>  Date.new(2017,10,5),
                :participaciones => 4,
                :goles => 0,
                :country_id => aus.id
  },

  {
                :nombre => "Trent",
                :apellido => "Sainsbury",
                :fecha_nacimiento => Date.new(1992,1,5),
                :ciudad_nacimiento => "Perth",
                :posicion => "Defensa central",
                :dorsal => 20,
                :apodo => "N/A",
                :debut =>  Date.new(2014,9,4),
                :participaciones => 34,
                :goles => 3,
                :country_id => aus.id
  },

  {
                :nombre => "Milos",
                :apellido => "Degenek",
                :fecha_nacimiento => Date.new(1994,4,28),
                :ciudad_nacimiento => "Knin",
                :posicion => "Defensa central",
                :dorsal => 2,
                :apodo => "N/A",
                :debut =>  Date.new(2016,5,27),
                :participaciones => 18,
                :goles => 0,
                :country_id => aus.id
  },

  {
                :nombre => "Aziz",
                :apellido => "Behich",
                :fecha_nacimiento => Date.new(1990,12,16),
                :ciudad_nacimiento => "Melbourne",
                :posicion => "Lateral izquierdo",
                :dorsal => 16,
                :apodo => "N/A",
                :debut =>  Date.new(2012,11,14),
                :participaciones => 22,
                :goles => 2,
                :country_id => aus.id
  },

  {
                :nombre => "James",
                :apellido => "Meredith",
                :fecha_nacimiento => Date.new(1988,4,4),
                :ciudad_nacimiento => "Albury",
                :posicion => "Lateral izquierdo",
                :dorsal => 3,
                :apodo => "N/A",
                :debut =>  Date.new(2015,11,12),
                :participaciones => 2,
                :goles => 0,
                :country_id => aus.id
  },

  {
                :nombre => "Joshua",
                :apellido => "Risdon",
                :fecha_nacimiento => Date.new(1992,7,27),
                :ciudad_nacimiento => "Bunbury",
                :posicion => "Lateral derecho",
                :dorsal => 19,
                :apodo => "N/A",
                :debut =>  Date.new(2015,11,7),
                :participaciones => 7,
                :goles => 0,
                :country_id => aus.id
  },

  {
                :nombre => "Mile",
                :apellido => "Jedinak",
                :fecha_nacimiento => Date.new(1984,8,3),
                :ciudad_nacimiento => "Camperdown",
                :posicion => "Pivote",
                :dorsal => 15,
                :apodo => "N/A",
                :debut =>  Date.new(2008,3,22),
                :participaciones => 75,
                :goles => 18,
                :country_id => aus.id
  },

  {
                :nombre => "Jackson",
                :apellido => "Irvine",
                :fecha_nacimiento => Date.new(1993,3,7),
                :ciudad_nacimiento => "Melbourne",
                :posicion => "Pivote",
                :dorsal => 22,
                :apodo => "N/A",
                :debut =>  Date.new(2013,10,15),
                :participaciones => 18,
                :goles => 2,
                :country_id => aus.id
  },

  {
                :nombre => "Mark",
                :apellido => "Milligan",
                :fecha_nacimiento => Date.new(1985,8,4),
                :ciudad_nacimiento => "Sydney",
                :posicion => "Pivote",
                :dorsal => 5,
                :apodo => "N/A",
                :debut =>  Date.new(2006,6,2),
                :participaciones => 70,
                :goles => 6,
                :country_id => aus.id
  },

  {
                :nombre => "Aaron",
                :apellido => "Mooy",
                :fecha_nacimiento => Date.new(1990,9,15),
                :ciudad_nacimiento => "Sydney",
                :posicion => "Medio centro",
                :dorsal => 13,
                :apodo => "N/A",
                :debut =>  Date.new(2012,12,7),
                :participaciones => 33,
                :goles => 5,
                :country_id => aus.id
  },
  {
                :nombre => "Massimo",
                :apellido => "Luongo",
                :fecha_nacimiento => Date.new(1992,9,25),
                :ciudad_nacimiento => "Syndey",
                :posicion => "Medio centro",
                :dorsal => 8,
                :apodo => "N/A",
                :debut =>  Date.new(2014,3,5),
                :participaciones => 35,
                :goles => 5,
                :country_id => aus.id
  },
  {
                :nombre => "Tom",
                :apellido => "Rogic",
                :fecha_nacimiento => Date.new(1992,9,25),
                :ciudad_nacimiento => "Griffith",
                :posicion => "Medio centro ofensivo",
                :dorsal => 23,
                :apodo => "N/A",
                :debut =>  Date.new(2012,11,14),
                :participaciones => 36,
                :goles => 7,
                :country_id => aus.id
  },

  {
                :nombre => "Tim",
                :apellido => "Cahill",
                :fecha_nacimiento => Date.new(1979,12,6),
                :ciudad_nacimiento => "Syndey",
                :posicion => "Medio centro ofensivo",
                :dorsal => 4,
                :apodo => "N/A",
                :debut =>  Date.new(2004,3,30),
                :participaciones => 105,
                :goles => 50,
                :country_id => aus.id
  },

  {
                :nombre => "Dimitri",
                :apellido => "Petratos",
                :fecha_nacimiento => Date.new(1992,11,10),
                :ciudad_nacimiento => "Sydney",
                :posicion => "Medio centro ofensivo",
                :dorsal => 21,
                :apodo => "N/A",
                :debut =>  Date.new(2018,3,24),
                :participaciones => 2,
                :goles => 0,
                :country_id => aus.id
  },
  {
                :nombre => "Robbie",
                :apellido => "Kruse",
                :fecha_nacimiento => Date.new(2011,1,5),
                :ciudad_nacimiento => "Brisbane",
                :posicion => "Extremo izquierdo",
                :dorsal => 10,
                :apodo => "N/A",
                :debut =>  Date.new(2011,1,5),
                :participaciones => 63,
                :goles => 5,
                :country_id => aus.id
  },
  {
                :nombre => "Mathew",
                :apellido => "Leckie",
                :fecha_nacimiento => Date.new(1991,2,4),
                :ciudad_nacimiento => "Melbourne",
                :posicion => "Extremo derecho",
                :dorsal => 7,
                :apodo => "N/A",
                :debut =>  Date.new(2012,11,14),
                :participaciones => 52,
                :goles => 8,
                :country_id => aus.id
  },
  {
                :nombre => "Daniel",
                :apellido => "Arzani",
                :fecha_nacimiento => Date.new(1999,1,4),
                :ciudad_nacimiento => "Chorramabad",
                :posicion => "Extremo derecho",
                :dorsal => 17,
                :apodo => "N/A",
                :debut =>  Date.new(2018,6,1),
                :participaciones => 1,
                :goles => 0,
                :country_id => aus.id
  },
  {
                :nombre => "Tomi",
                :apellido => "Juric",
                :fecha_nacimiento => Date.new(1991,7,22),
                :ciudad_nacimiento => "Auburn",
                :posicion => "Delantero centro",
                :dorsal => 9,
                :apodo => "N/A",
                :debut =>  Date.new(2013,7,20),
                :participaciones => 34,
                :goles => 8,
                :country_id => aus.id
  },
  {
                :nombre => "Jamie",
                :apellido => "Maclaren",
                :fecha_nacimiento => Date.new(1993,7,29),
                :ciudad_nacimiento => "Melbourne",
                :posicion => "Delantero centro",
                :dorsal => 14,
                :apodo => "N/A",
                :debut =>  Date.new(2016,5,27),
                :participaciones => 6,
                :goles => 0,
                :country_id => aus.id
  },
  {
                :nombre => "Andrew",
                :apellido => "Nabbout",
                :fecha_nacimiento => Date.new(1992,12,17),
                :ciudad_nacimiento => "Melbourne",
                :posicion => "Delantero centro",
                :dorsal => 11,
                :apodo => "N/A",
                :debut =>  Date.new(2018,3,24),
                :participaciones => 3,
                :goles => 1,
                :country_id => aus.id
  },
])

