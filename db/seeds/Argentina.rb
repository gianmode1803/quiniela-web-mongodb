# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

arg = Country.create(
  :nombre => 'Argentina', 
  :apodo => 'Albiceleste', 
  :grupo => 'D', 
  :escudo => 'public/countries/ArgLo.png', 
  :bandera => '../assets/banderas/argentina')

@argG = arg

 arg_coa = Coach.create(#Argentina
  :nombre => "Jorge",
  :apellido => "Sampaoli",
  :apodo => "Sampa",
  :fecha_nacimiento => Date.new(1960,3,13),
  :ciudad_nacimiento => "Casilda")


CoachTeam.create(
  :debut => Date.new(2017,1,6),
  :coach_id => arg_coa.id,
  :country_id  => arg.id)


Player.create([#Porteros

  {
                :nombre => "Nahuel",
                :apellido => "Guzmán",
                :fecha_nacimiento => Date.new(1986,2,10),
                :ciudad_nacimiento => "Rosario",
                :posicion => "Portero",
                :dorsal => 1,
                :apodo => "Patón",
                :debut =>  Date.new(2014,10,13),
                :participaciones => 6,
                :goles => 0,
                :country_id => arg.id
  },

  {
              :nombre => "Franco",
              :apellido => "Armani",
              :fecha_nacimiento => Date.new(1986,10,16),
              :ciudad_nacimiento => "Casilda",
              :posicion => "Portero",
              :dorsal => 12,
              :apodo => "Pulpo",
              :debut =>  Date.new(2018,3,23), #No tenía debut
              :participaciones => 0,
              :goles => 0,
              :country_id => arg.id
  },

  {
              :nombre => "Willy",
              :apellido => "Caballero",
              :fecha_nacimiento => Date.new(1981,9,28),
              :ciudad_nacimiento => "Santa Elena",
              :posicion => "Portero",
              :dorsal => 23,
              :apodo => "Willy",
              :debut =>  Date.new(2018,3,23),
              :participaciones => 3,
              :goles => 0,
              :country_id => arg.id
  },
#Defensa
  {
              :nombre => "Gabriel",
              :apellido => "Mercado",
              :fecha_nacimiento => Date.new(1987,3,18),
              :ciudad_nacimiento => "Puerto Madryn",
              :posicion => "Lateral derecho",
              :dorsal => 2,
              :apodo => "Gabi, Negro",
              :debut =>  Date.new(2010,2,10),
              :participaciones => 20,
              :goles => 3,
              :country_id => arg.id
  },

  {
              :nombre => "Nicolás",
              :apellido => "Tagliafico",
              :fecha_nacimiento => Date.new(1992,8,31),
              :ciudad_nacimiento => "Rafael Calzada",
              :posicion => "Lateral izquierdo",
              :dorsal => 3,
              :apodo => "Taglia, Pitbull, El León",
              :debut =>  Date.new(2017,6,9),
              :participaciones => 4,
              :goles => 0,
              :country_id => arg.id
  },

  {
              :nombre => "Cristian",
              :apellido => "Ansaldi",
              :fecha_nacimiento => Date.new(1986,9,20),
              :ciudad_nacimiento => "Rosario",
              :posicion => "Lateral izquierdo",
              :dorsal => 4,
              :apodo => "El Colo, Lechuga",
              :debut =>  Date.new(2009,11,14),
              :participaciones => 5,
              :goles => 1,
              :country_id => arg.id
  },

  {
              :nombre => "Federico",
              :apellido => "Fazio",
              :fecha_nacimiento => Date.new(1987,3,17),
              :ciudad_nacimiento => "Ramos Mejía",
              :posicion => "Defensa central",
              :dorsal => 6,
              :apodo => "Torre, Fede, Comandante",
              :debut =>  Date.new(2011,6,1),
              :participaciones => 9,
              :goles => 1,
              :country_id => arg.id
  },

  {
              :nombre => "Marcos",
              :apellido => "Acuña",
              :fecha_nacimiento => Date.new(1991,10,28),
              :ciudad_nacimiento => "Zapala",
              :posicion => "Interior izquierdo",
              :dorsal => 8,
              :apodo => "Huevo",
              :debut =>  Date.new(2016,11,15),
              :participaciones => 10,
              :goles => 0,
              :country_id => arg.id
  },

  {
              :nombre => "Marcos",
              :apellido => "Rojo",
              :fecha_nacimiento => Date.new(1990,3,20),
              :ciudad_nacimiento => "La Plata",
              :posicion => "Defensa central",
              :dorsal => 16,
              :apodo => "Marquito",
              :debut =>  Date.new(2011,2,9),
              :participaciones => 56,
              :goles => 2,
              :country_id => arg.id
  },

  {
              :nombre => "Nicolás",
              :apellido => "Otamendi",
              :fecha_nacimiento => Date.new(1988,2,12),
              :ciudad_nacimiento => "El Talar de Pacheco",
              :posicion => "Defensa central",
              :dorsal => 17,
              :apodo => "N/A",
              :debut =>  Date.new(2009,5,20),
              :participaciones => 54,
              :goles => 4,
              :country_id => arg.id
  },

#Centrocampista
  {
              :nombre => "Lucas",
              :apellido => "Biglia",
              :fecha_nacimiento => Date.new(1986,1,30),
              :ciudad_nacimiento => "Mercedes",
              :posicion => "Pivote",
              :dorsal => 5,
              :apodo => "N/A",
              :debut =>  Date.new(2011,2,9),
              :participaciones => 57,
              :goles => 1,
              :country_id => arg.id
  },

  {
              :nombre => "Éver",
              :apellido => "Banega",
              :fecha_nacimiento => Date.new(1988,6,29),
              :ciudad_nacimiento => "Rosario",
              :posicion => "Medio centro",
              :dorsal => 7,
              :apodo => "Tanguito",
              :debut =>  Date.new(2008,6,4),
              :participaciones => 62,
              :goles => 6,
              :country_id => arg.id
  },

  {
              :nombre => "Ángel",
              :apellido => "Di María",
              :fecha_nacimiento => Date.new(1988,2,14),
              :ciudad_nacimiento => "Rosario",
              :posicion => "Extremo derecho",
              :dorsal => 11,
              :apodo => "El Fideo",
              :debut =>  Date.new(2009,10,15),
              :participaciones => 94,
              :goles => 19,
              :country_id => arg.id
  },

  {
              :nombre => "Maximiliano",
              :apellido => "Meza",
              :fecha_nacimiento => Date.new(1992,1,15),
              :ciudad_nacimiento => "Caá Catí",
              :posicion => "Medio centro ofensivo",
              :dorsal => 13,
              :apodo => "N/A",
              :debut =>  Date.new(2018,3,27),
              :participaciones => 2,
              :goles => 0,
              :country_id => arg.id
  },

  {
              :nombre => "Javier",
              :apellido => "Mascherano",
              :fecha_nacimiento => Date.new(1984,6,8),
              :ciudad_nacimiento => "San Lorenzo",
              :posicion => "Pivote",
              :dorsal => 14,
              :apodo => "El Jefecito",
              :debut =>  Date.new(2003,7,16),
              :participaciones => 143,
              :goles => 3,
              :country_id => arg.id
  },

  {
              :nombre => "Eduardo",
              :apellido => "Salvio",
              :fecha_nacimiento => Date.new(1990,7,13),
              :ciudad_nacimiento => "Lanús",
              :posicion => "Extremo derecho",
              :dorsal => 18,
              :apodo => "Toto",
              :debut =>  Date.new(2009,5,20),
              :participaciones => 9,
              :goles => 0,
              :country_id => arg.id
  },

  {
              :nombre => "Giovani",
              :apellido => "Lo Celso",
              :fecha_nacimiento => Date.new(1996,4,9),
              :ciudad_nacimiento => "Rosario",
              :posicion => "Medio centro",
              :dorsal => 20,
              :apodo => "Monito, Gio, Bochón",
              :debut =>  Date.new(2017,11,11),
              :participaciones => 5,
              :goles => 0,
              :country_id => arg.id
  },

  {
              :nombre => "Cristian",
              :apellido => "Pavón",
              :fecha_nacimiento => Date.new(1996,1,21),
              :ciudad_nacimiento => "Anisacate",
              :posicion => "Extremo derecho",
              :dorsal => 22,
              :apodo => "Kichán",
              :debut =>  Date.new(2017,11,11),
              :participaciones => 5,
              :goles => 0,
              :country_id => arg.id
  },

  #Delantero
  {
              :nombre => "Gonzalo",
              :apellido => "Higuaín",
              :fecha_nacimiento => Date.new(1987,12,10),
              :ciudad_nacimiento => "Brest",
              :posicion => "Delantero centro",
              :dorsal => 9,
              :apodo => "Pipa, Pipita",
              :debut =>  Date.new(2009,10,11),
              :participaciones => 72,
              :goles => 31,
              :country_id => arg.id
  },

  {
              :nombre => "Lionel",
              :apellido => "Messi",
              :fecha_nacimiento => Date.new(1987,6,24),
              :ciudad_nacimiento => "Rosario",
              :posicion => "Extremo derecho",
              :dorsal => 10,
              :apodo => "Leo, Lío, ​La Pulga, El Messías, D10S",
              :debut =>  Date.new(2005,8,17),
              :participaciones => 124,
              :goles => 64,
              :country_id => arg.id
  },

  {
              :nombre => "Sergio",
              :apellido => "Agüero",
              :fecha_nacimiento => Date.new(1988,6,2),
              :ciudad_nacimiento => "Buenos Aires",
              :posicion => "Delantero centro",
              :dorsal => 19,
              :apodo => "Kun",
              :debut =>  Date.new(2006,9,3),
              :participaciones => 85,
              :goles => 37,
              :country_id => arg.id
  },

  {
              :nombre => "Paulo",
              :apellido => "Dybala",
              :fecha_nacimiento => Date.new(1993,11,15),
              :ciudad_nacimiento => "Laguna Larga",
              :posicion => "Media punta",
              :dorsal => 21,
              :apodo => "La Joya",
              :debut =>  Date.new(2015,10,14),
              :participaciones => 12,
              :goles => 0,
              :country_id => arg.id
  },
])

