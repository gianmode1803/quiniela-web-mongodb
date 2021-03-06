# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pol = Country.create( 
       :nombre => 'Polonia', 
       :apodo => 'Biało-czerwoni (Blancos y rojos)', 
       :grupo => 'H', 
       :escudo => 'public/countries/PolLo.png', 
       :bandera => '../assets/banderas/polonia')

@polG = pol

pol_coa =  Coach.create(#Polonia
  :nombre => "Adam",
  :apellido => "Nawalka",
  :apodo => "N/A",
  :fecha_nacimiento => Date.new(1957,10,23),
  :ciudad_nacimiento => "Cracovia")

CoachTeam.create(
  :debut => Date.new(2013,11,1),
  :coach_id => pol_coa.id,
  :country_id  => pol.id)

Player.create([{#Polonia
              :nombre => "Wojciech",
              :apellido => "Szczesny",
              :fecha_nacimiento => Date.new(1990,4,18),
              :ciudad_nacimiento => "Warszawa",
              :posicion => "Portero",
              :dorsal => 1,
              :apodo => "N/A",
              :debut =>  Date.new(2009,11,18),
              :participaciones => 33,
              :goles => 0,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Lukasz",
              :apellido => "Fabianski",
              :fecha_nacimiento => Date.new(1985,4,18),
              :ciudad_nacimiento => "Kostrzyn nad Odrą",
              :posicion => "Portero",
              :dorsal => 22,
              :apodo => "N/A",
              :debut =>  Date.new(2006,3,28),
              :participaciones => 43,
              :goles => 0,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Bartosz",
              :apellido => "Bialkowski",
              :fecha_nacimiento => Date.new(1987,7,6),
              :ciudad_nacimiento => "Braniewo",
              :posicion => "Portero",
              :dorsal => 12,
              :apodo => "N/A",
              :debut =>  Date.new(2018,3,23),
              :participaciones => 1,
              :goles => 0,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Kamil",
              :apellido => "Glik",
              :fecha_nacimiento => Date.new(1988,2,3),
              :ciudad_nacimiento => "Jastrzębie Zdrój",
              :posicion => "Defensa Central",
              :dorsal => 15,
              :apodo => "N/A",
              :debut =>  Date.new(2010,1,20),
              :participaciones => 58,
              :goles => 4,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Jan",
              :apellido => "Bednarek",
              :fecha_nacimiento => Date.new(1996,4,12),
              :ciudad_nacimiento => "Słupca",
              :posicion => "Defensa Central",
              :dorsal =>  5,
              :apodo => "N/A",
              :debut =>  Date.new(2017,9,4),
              :participaciones =>  1,
              :goles =>  0,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Michal",
              :apellido => "Pazdan",
              :fecha_nacimiento => Date.new(1987,9,21),
              :ciudad_nacimiento => "Kraków",
              :posicion => "Defensa Central",
              :dorsal => 2,
              :apodo => "N/A",
              :debut =>  Date.new(2007,12,15),
              :participaciones => 31,
              :goles => 0,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Thiago",
              :apellido => "Cionek",
              :fecha_nacimiento => Date.new(1986,4,21),
              :ciudad_nacimiento => "Curitiba",
              :posicion => "Defensa Central",
              :dorsal => 4,
              :apodo => "N/A",
              :debut =>  Date.new(2014,5,13),
              :participaciones =>  17,
              :goles =>  0,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Bartosz",
              :apellido => "Bereszynski",
              :fecha_nacimiento => Date.new(1992,7,12),
              :ciudad_nacimiento => "Poznań",
              :posicion => "Lateral Derecho",
              :dorsal =>  18,
              :apodo => "N/A",
              :debut =>  Date.new(2013,6,4),
              :participaciones => 6,
              :goles =>  0,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Lukasz",
              :apellido => "Piszczek",
              :fecha_nacimiento => Date.new(1985,6,3),
              :ciudad_nacimiento => "Czechowice-Dziedzice",
              :posicion => "Lateral Derecho",
              :dorsal =>  20,
              :apodo => "N/A",
              :debut =>  Date.new(2007,2,3),
              :participaciones => 61,
              :goles =>  3,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Artur",
              :apellido => "Jedrzejczyk",
              :fecha_nacimiento => Date.new(1987,11,4),
              :ciudad_nacimiento => "Dębica",
              :posicion => "Lateral Derecho",
              :dorsal =>  3,
              :apodo => "N/A",
              :debut =>  Date.new(2010,7,26),
              :participaciones =>  35,
              :goles =>  3,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Grzegorz",
              :apellido => "Krychowiak",
              :fecha_nacimiento => Date.new(1990,1,29),
              :ciudad_nacimiento => "Gryfice",
              :posicion => "Pivote",
              :dorsal =>  10,
              :apodo => "N/A",
              :debut =>  Date.new(2008,12,14),
              :participaciones => 49,
              :goles =>  2,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Jacek",
              :apellido => "Goralski",
              :fecha_nacimiento => Date.new(1992,9,21),
              :ciudad_nacimiento => "Bydgoszcz",
              :posicion => "Pivote",
              :dorsal =>  6,
              :apodo => "N/A",
              :debut =>  Date.new(2016,11,14),
              :participaciones =>  3,
              :goles =>  0,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Piotr",
              :apellido => "Zielinski",
              :fecha_nacimiento => Date.new(1994,5,20),
              :ciudad_nacimiento => "Ząbkowice Śląskie",
              :posicion => "Medio Centro",
              :dorsal =>  19,
              :apodo => "N/A",
              :debut =>  Date.new(2013,6,4),
              :participaciones =>  31,
              :goles =>  4,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Karol",
              :apellido => "Linetty",
              :fecha_nacimiento => Date.new(1995,2,2),
              :ciudad_nacimiento => "Żnin",
              :posicion => "Medio Centro",
              :dorsal =>  8,
              :apodo => "N/A",
              :debut =>  Date.new(2014,1,18),
              :participaciones => 19,
              :goles =>  1,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Jakub",
              :apellido => "Blaszczykowski",
              :fecha_nacimiento => Date.new(1985,12,14),
              :ciudad_nacimiento => "Truskolasy",
              :posicion => "Interior derecho",
              :dorsal =>  16,
              :apodo => "N/A",
              :debut =>  Date.new(2006,3,28),
              :participaciones => 97,
              :goles =>  19,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Maciej",
              :apellido => "Rybus",
              :fecha_nacimiento => Date.new(1989,8,19),
              :ciudad_nacimiento => "Łowicz",
              :posicion => "Interior izquierdo",
              :dorsal => 13,
              :apodo => "N/A",
              :debut =>  Date.new(2009,11,14),
              :participaciones =>  49,
              :goles =>  2,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Rafal",
              :apellido => "Kurzawa",
              :fecha_nacimiento => Date.new(1993,1,29),
              :ciudad_nacimiento => "Wieruszów",
              :posicion => "Extremo izquierdo",
              :dorsal =>  21,
              :apodo => "N/A",
              :debut =>  Date.new(2017,11,13),
              :participaciones =>  3,
              :goles =>  0,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Slawomir",
              :apellido => "Peszko",
              :fecha_nacimiento => Date.new(1985,2,19),
              :ciudad_nacimiento => "Jasło",
              :posicion => "Extremo izquierdo",
              :dorsal =>  17,
              :apodo => "N/A",
              :debut =>  Date.new(2008,11,19),
              :participaciones =>  43,
              :goles =>  2,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Kamil",
              :apellido => "Grosicki",
              :fecha_nacimiento => Date.new(1988,6,8),
              :ciudad_nacimiento => "Szczecin",
              :posicion => "Extremo Derecho",
              :dorsal =>  11,
              :apodo => "N/A",
              :debut =>  Date.new(2008,2,2),
              :participaciones =>  56,
              :goles =>  12,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Robert",
              :apellido => "Lewandowski",
              :fecha_nacimiento => Date.new(1988,8,21),
              :ciudad_nacimiento => "Warszawa",
              :posicion => "Delantero Centro",
              :dorsal =>  9,
              :apodo => "N/A",
              :debut =>  Date.new(2008,9,10),
              :participaciones => 93,
              :goles =>  52,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Arkadiusz",
              :apellido => "Milik",
              :fecha_nacimiento => Date.new(1994,2,28),
              :ciudad_nacimiento => "Tychy",
              :posicion => "Delantero Centro",
              :dorsal =>  7,
              :apodo => "N/A",
              :debut =>  Date.new(2012,10,12),
              :participaciones =>  38,
              :goles =>  12,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Lukasz",
              :apellido => "Teodorczyk",
              :fecha_nacimiento => Date.new(1991,6,3),
              :ciudad_nacimiento => "Żuromin",
              :posicion => "Delantero Centro",
              :dorsal =>  14,
              :apodo => "N/A",
              :debut =>  Date.new(2013,3,22),
              :participaciones =>  15,
              :goles =>  4,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
},
{
              :nombre => "Dawid",
              :apellido => "Kownacki",
              :fecha_nacimiento => Date.new(1997,3,14),
              :ciudad_nacimiento => "Gorzów Wielkopolski",
              :posicion => "Delantero Centro",
              :dorsal =>  23,
              :apodo => "N/A",
              :debut =>  Date.new(2018,3,23),
              :participaciones =>  1,
              :goles =>  0,
              :country_id => pol.id,
              :created_at => Date.new(2018,6.6),
              :updated_at => Date.new(2018,6.6)
}])
