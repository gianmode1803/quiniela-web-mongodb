# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
portugal = Country.create(:nombre => 'Portugal', :apodo => 'El equipo de los escudos', :grupo => 'B', :escudo => 'public/countries/PorLo.png', :bandera => '../assets/banderas/portugal')

@portG = portugal

 por_coa =  Coach.create(#Croacia
  :nombre => "Fernando",
  :apellido => "Santos",
  :apodo => "N/A",
  :fecha_nacimiento => Date.new(1954,10,10),
  :ciudad_nacimiento => "Lisboa")


CoachTeam.create(
  :debut => Date.new(2017,10,7),
  :coach_id => por_coa.id,
  :country_id  => portugal.id)


Player.create(:nombre => "Rui Pedro dos Santos",
  :apellido => "Patrício",
  :fecha_nacimiento => Date.new(1988,2,15),
  :ciudad_nacimiento => "Marrazes, Leiria, Portugal",
  :posicion => "Portero",
  :dorsal => 1,
  :apodo => "Rui Patrício",
  :debut =>  Date.new(2015,3,31),
  :participaciones => 69,
  :country_id => portugal.id,
  :goles => 0)

Player.create(:nombre => "Anthony",
  :apellido => "Lopes",
  :fecha_nacimiento => Date.new(1990,10,1),
  :ciudad_nacimiento => "Givors, Francia",
  :posicion => "Portero",
  :dorsal => 12,
  :apodo => "N/A",
  :debut =>  Date.new(2015,3,31),
  :participaciones => 7,
  :country_id => portugal.id,
  :goles => 0)

Player.create(:nombre => "António Alberto",
  :apellido => "Bastos Pimparel",
  :fecha_nacimiento => Date.new(1982,5,1),
  :ciudad_nacimiento => "Loures, Portugal",
  :posicion => "Portero",
  :dorsal => 22,
  :apodo => "Beto",
  :debut =>  Date.new(2009,6,10),
  :participaciones => 14,
  :country_id => portugal.id,
  :goles => 0)

Player.create(:nombre => "Rubén Santos",
  :apellido => "Gato",
  :fecha_nacimiento => Date.new(1997,5,14),
  :ciudad_nacimiento => "Amadora, Portugal",
  :posicion => "Defensa",
  :dorsal => 13,
  :apodo => "Rúben Dias",
  :debut =>  Date.new(2018,5,28),
  :participaciones => 1,
  :country_id => portugal.id,
  :goles => 0)

Player.create(:nombre => "Képler Laveran",
  :apellido => "Lima Ferreira",
  :fecha_nacimiento => Date.new(1983,2,26),
  :ciudad_nacimiento => "Maceió, Alagoas, Brasil",
  :posicion => "Defensa",
  :dorsal => 3,
  :apodo => "Pepe",
  :debut =>  Date.new(2007,11,21),
  :participaciones => 95,
  :country_id => portugal.id,
  :goles => 5)

Player.create(:nombre => "José Miguel",
  :apellido => "da Rocha Fonte",
  :fecha_nacimiento => Date.new(1983,12,22),
  :ciudad_nacimiento => "Penafiel, Portugal",
  :posicion => "Defensa",
  :dorsal => 6,
  :apodo => "Fonte",
  :debut =>  Date.new(2014,11,18),
  :participaciones => 31,
  :country_id => portugal.id,
  :goles => 0)

Player.create(:nombre => "Bruno Eduardo",
  :apellido => "Regufe Alves",
  :fecha_nacimiento => Date.new(1981,11,27),
  :ciudad_nacimiento => "Póvoa de Varzim, Portugal",
  :posicion => "Defensa",
  :dorsal => 2,
  :apodo => "Bruno Alves",
  :debut =>  Date.new(2007,6,5),
  :participaciones => 96,
  :country_id => portugal.id,
  :goles => 11)

Player.create(:nombre => "Raphaël",
  :apellido => "Guerreiro",
  :fecha_nacimiento => Date.new(1993,12,22),
  :ciudad_nacimiento => "Le Blanc-Mesnil, Francia",
  :posicion => "Lateral izquierdo",
  :dorsal => 5,
  :apodo => "N/A",
  :debut =>  Date.new(2014,11,14),
  :participaciones => 24,
  :country_id => portugal.id,
  :goles => 2)

Player.create(:nombre => "Mário Rui",
  :apellido => "Silva Duarte",
  :fecha_nacimiento => Date.new(1991,5,27),
  :ciudad_nacimiento => "Sines, Portugal",
  :posicion => "Lateral izquierdo",
  :dorsal => 19,
  :apodo => "Mario Rui",
  :debut =>  Date.new(2018,3,26),
  :participaciones => 4,
  :country_id => portugal.id,
  :goles => 0)

Player.create(:nombre => "Cedrid Ricardo",
  :apellido => "Alves Soares",
  :fecha_nacimiento => Date.new(1991,8,31),
  :ciudad_nacimiento => "Singen, Alemania",
  :posicion => "Lateral derecho",
  :dorsal => 21,
  :apodo => "N/A",
  :debut =>  Date.new(2014,10,11),
  :participaciones => 29,
  :country_id => portugal.id,
  :goles => 1)

Player.create(:nombre => "Ricardo Domingos",
  :apellido => "Barbosa Pereira",
  :fecha_nacimiento => Date.new(1993,10,6),
  :ciudad_nacimiento => "Lisboa, Portugal",
  :posicion => "Lateral derecho",
  :dorsal => 15,
  :apodo => "N/A",
  :debut =>  Date.new(2015,11,14),
  :participaciones => 4,
  :country_id => portugal.id,
  :goles => 0)

Player.create(:nombre => "William",
  :apellido => "Silva de Carvalho",
  :fecha_nacimiento => Date.new(1992,4,7),
  :ciudad_nacimiento => "Luanda, Angola",
  :posicion => "Pivote",
  :dorsal => 14,
  :apodo => "N/A",
  :debut =>  Date.new(2013,11,19),
  :participaciones => 43,
  :country_id => portugal.id,
  :goles => 2)

Player.create(:nombre => "Adrien Sebastian",
  :apellido => "Perruchet Silva",
  :fecha_nacimiento => Date.new(1989,3,15),
  :ciudad_nacimiento => "Angulema, Francia",
  :posicion => "Medio centro",
  :dorsal => 23,
  :apodo => "N/A",
  :debut =>  Date.new(2014,11,18),
  :participaciones => 23,
  :country_id => portugal.id,
  :goles => 1)

Player.create(:nombre => "João",
  :apellido => "Moutinho",
  :fecha_nacimiento => Date.new(1986,9,8),
  :ciudad_nacimiento => "Portimão, Portugal",
  :posicion => "Medio centro",
  :dorsal => 8,
  :apodo => "N/A",
  :debut =>  Date.new(2005,8,17),
  :participaciones => 110,
  :country_id => portugal.id,
  :goles => 7)

Player.create(:nombre => "Manuel Henrique",
  :apellido => "Tavares Fernandes",
  :fecha_nacimiento => Date.new(1986,2,5),
  :ciudad_nacimiento => " Lisboa, Portugal",
  :posicion => "Medio centro",
  :dorsal => 4,
  :apodo => "Manuel Fernandes",
  :debut =>  Date.new(2005,2,9),
  :participaciones => 14,
  :country_id => portugal.id,
  :goles => 3)

Player.create(:nombre => "Joao Mário",
  :apellido => "Naval Costa Eduardo",
  :fecha_nacimiento => Date.new(1993,1,19),
  :ciudad_nacimiento => "Oporto, Portugal",
  :posicion => "Medio centro ofensivo",
  :dorsal => 10,
  :apodo => "Joao Mário",
  :debut =>  Date.new(2014,10,11),
  :participaciones => 36,
  :country_id => portugal.id,
  :goles => 2)

Player.create(:nombre => "Bruno",
  :apellido => "Fernandes",
  :fecha_nacimiento => Date.new(1994,9,8),
  :ciudad_nacimiento => "Maia, Maia, Portugal",
  :posicion => "Medio centro ofensivo",
  :dorsal => 16,
  :apodo => "N/A",
  :debut =>  Date.new(2017,11,10),
  :participaciones => 6,
  :country_id => portugal.id,
  :goles => 1)

Player.create(:nombre => "Gonçalo",
  :apellido => "Guedes",
  :fecha_nacimiento => Date.new(1996,11,29),
  :ciudad_nacimiento => "Benavente, Portugal",
  :posicion => "Extremo izquierdo",
  :dorsal => 17,
  :apodo => "N/A",
  :debut =>  Date.new(2015,11,14),
  :participaciones => 10,
  :country_id => portugal.id,
  :goles => 3)

Player.create(:nombre => "Bernardo",
  :apellido => "Silva",
  :fecha_nacimiento => Date.new(1994,8,10),
  :ciudad_nacimiento => "Lisboa, Portugal",
  :posicion => "Mediocampista",
  :dorsal => 11,
  :apodo => "N/A",
  :debut =>  Date.new(2015,3,31),
  :participaciones => 25,
  :country_id => portugal.id,
  :goles => 2)

Player.create(:nombre => "Gelson Dany",
  :apellido => "Batalha Martins",
  :fecha_nacimiento => Date.new(1995,5,11),
  :ciudad_nacimiento => "Praia, Cabo Verde",
  :posicion => "Extremo derecho",
  :dorsal => 18,
  :apodo => "Gelson Martins",
  :debut =>  Date.new(2016,10,7),
  :participaciones => 18,
  :country_id => portugal.id,
  :goles => 0)

Player.create(:nombre => "Ricardo Andrade",
  :apellido => "Quaresma Bernardo",
  :fecha_nacimiento => Date.new(1983,9,26),
  :ciudad_nacimiento => "Lisboa, Portugal",
  :posicion => "Extremo derecho",
  :dorsal => 20,
  :apodo => "Quaresma",
  :debut =>  Date.new(2003,6,10),
  :participaciones => 77,
  :country_id => portugal.id,
  :goles => 9)

Player.create(:nombre => "Cristiano Ronaldo",
  :apellido => "dos Santos Aveiro",
  :fecha_nacimiento => Date.new(1985,2,5),
  :ciudad_nacimiento => "Hospital Dr. Nélio Mendonça, Funchal, Portugal",
  :posicion => "Delantero centro",
  :dorsal => 7,
  :apodo => "Cristiano Ronaldo",
  :debut =>  Date.new(2003,8,20),
  :participaciones => 150,
  :country_id => portugal.id,
  :goles => 81)

Player.create(:nombre => "André",
  :apellido => "Silva",
  :fecha_nacimiento => Date.new(1995,11,6),
  :ciudad_nacimiento => "Baguim do Monte, Portugal",
  :posicion => "Delantero centro",
  :dorsal => 9,
  :apodo => "N/A",
  :debut =>  Date.new(2016,9,1),
  :participaciones => 23,
  :country_id => portugal.id,
  :goles => 12)