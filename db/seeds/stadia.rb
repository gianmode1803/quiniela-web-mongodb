# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

estadio1 = Stadium.create(ciudad:"Moscu", capacidad:80000, nombre:"Luzhnikí")
estadio2 = Stadium.create(ciudad:"San Petersburgo", capacidad:67000, nombre:"Estadio de San Petersburgo")
estadio3 = Stadium.create(ciudad:"Sochi", capacidad:48000, nombre:"Estadio Fisht")
estadio4 = Stadium.create(ciudad:"Ekaterimburgo", capacidad:35000, nombre:"Ekaterimburgo Arena")
estadio5 = Stadium.create(ciudad:"Kazan", capacidad:45000, nombre:"Kazan Arena")
estadio6 = Stadium.create(ciudad:"Nizhni Novgorod", capacidad:45000, nombre:"Estadio de Nizhni Novgorod")
estadio7 = Stadium.create(ciudad:"Rostov del Don", capacidad:45000, nombre:"Rostov Arena")
estadio8 = Stadium.create(ciudad:"Samara", capacidad:45000, nombre:"Samara Arena")
estadio9 = Stadium.create(ciudad:"Saransk", capacidad:45000, nombre:"Mordovia Arena")
estadio10 = Stadium.create(ciudad:"Volgogrado", capacidad:45000, nombre:"Volgogrado Arena")
estadio11 = Stadium.create(ciudad:"Moscu", capacidad:45000, nombre:"Estadio Spartak")
estadio12 = Stadium.create(ciudad:"Kaliningrado", capacidad:35000, nombre:"Estadio de Kaliningrado")

#Rusia-Arabia Saudita
calendario1 = Calendar.create(fase:"Fase de grupos", fecha: DateTime.new(2018,06,14), hora: "11:00", stadium_id: estadio1.id)
#Egipto-Uruguay
calendario2 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,15), hora: "08:00", stadium_id: estadio4.id)
#Marruecos-Iran
calendario3 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,15), hora: "11:00", stadium_id: estadio2.id)
#España-Portugal
calendario4 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,15), hora: "14:00", stadium_id: estadio3.id)
#Francia-Australia
calendario5 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,16), hora: "06:00", stadium_id: estadio5.id)
#Argentina-Islandia
calendario6 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,16), hora: "09:00", stadium_id: estadio11.id)
#Peru-Dinamarca
calendario7 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,16), hora: "12:00", stadium_id: estadio9.id)
#Croacia-Nigeria
calendario8 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,16), hora: "15:00", stadium_id: estadio12.id)
#Costa Rica-Serbia
calendario9 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,17), hora: "08:00", stadium_id: estadio8.id)
#Alemania-Mexico
calendario10 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,17), hora: "11:00", stadium_id: estadio1.id)
#Brasil-Suiza
calendario11 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,17), hora: "14:00", stadium_id: estadio7.id)
#Suecia-Republica de Corea
calendario12 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,18), hora: "08:00", stadium_id: estadio6.id)
#Belgica-Panama
calendario13 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,18), hora: "11:00", stadium_id: estadio3.id)
#Tunez-Inglaterra
calendario14 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,18), hora: "14:00", stadium_id: estadio10.id)
#Colombia-Japon
calendario15 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,19), hora: "08:00", stadium_id: estadio9.id)
#Polonia-Senegal
calendario16 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,19), hora: "11:00", stadium_id: estadio11.id)
#Rusia-Egipto
calendario17 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,19), hora: "14:00", stadium_id: estadio2.id)
#Portugal-Marruecos
calendario18 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,20), hora: "08:00", stadium_id: estadio1.id)
#Uruguay-Arabia Saudita
calendario19 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,20), hora: "11:00", stadium_id: estadio7.id)
#Iran-España
calendario20 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,20), hora: "14:00", stadium_id: estadio5.id)
#Dinamarca-Australia
calendario21 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,21), hora: "08:00", stadium_id: estadio8.id)
#Francia-Peru
calendario22 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,21), hora: "11:00", stadium_id: estadio4.id)
#Argentina-Croacia
calendario23 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,21), hora: "14:00", stadium_id: estadio6.id)
#Brasil-Costa Rica
calendario24 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,22), hora: "08:00", stadium_id: estadio2.id)
#Nigeria-Islandia
calendario25 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,22), hora: "11:00", stadium_id: estadio10.id)
#Serbia-Suiza
calendario26 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,22), hora: "14:00", stadium_id: estadio12.id)
#Belgica-Tunez
calendario27 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,23), hora: "08:00", stadium_id: estadio11.id)
#Republica de Corea-Mexico
calendario28 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,23), hora: "11:00", stadium_id: estadio7.id)
#Alemania-Suecia
calendario29 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,23), hora: "14:00", stadium_id: estadio3.id)
#Inglaterra-Panama
calendario30 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,24), hora: "08:00", stadium_id: estadio6.id)
#Japon-Senegal
calendario31 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,24), hora: "11:00", stadium_id: estadio4.id)
#Polonia-Colombia
calendario32 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,24), hora: "14:00", stadium_id: estadio5.id)
#Uruguay-Rusia
calendario33 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,25), hora: "10:00", stadium_id: estadio8.id)
#Arabia Saudita-Egipto
calendario34 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,25), hora: "10:00", stadium_id: estadio10.id)
#España-Marruecos
calendario35 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,25), hora: "14:00", stadium_id: estadio12.id)
#Iran-Portugal
calendario36 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,25), hora: "14:00", stadium_id: estadio9.id)
#Australia-Peru
calendario37 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,26), hora: "10:00", stadium_id: estadio3.id)
#Dinamarca-Francia
calendario38 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,26), hora: "10:00", stadium_id: estadio1.id)
#Nigeria-Argentina
calendario39 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,26), hora: "14:00", stadium_id: estadio2.id)
#Islandia-Croacia
calendario40 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,26), hora: "14:00", stadium_id: estadio7.id)
#Republica de Corea-Alemania
calendario41 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,27), hora: "10:00", stadium_id: estadio5.id)
#Mexico-Suecia
calendario42 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,27), hora: "10:00", stadium_id: estadio4.id)
#Serbia-Brasil
calendario43 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,27), hora: "14:00", stadium_id: estadio11.id)
#Suiza-Costa Rica
calendario44 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,27), hora: "14:00", stadium_id: estadio6.id)
#Japon-Polonia
calendario45 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,28), hora: "10:00", stadium_id: estadio10.id)
#Senegal-Colombia
calendario46 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,28), hora: "10:00", stadium_id: estadio8.id)
#Panama-Tunez
calendario47 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,28), hora: "14:00", stadium_id: estadio9.id)
#Inglaterra-Belgica
calendario48 = Calendar.create(fase: "Fase de grupos", fecha: DateTime.new(2018,06,28), hora: "14:00", stadium_id: estadio12.id)
#1C - 2D
calendario49 = Calendar.create(fase: "Octavos de final", fecha: DateTime.new(2018,06,30), hora: "10:00", stadium_id: estadio5.id)
#1A - 2B
calendario50 = Calendar.create(fase: "Octavos de final", fecha: DateTime.new(2018,06,30), hora: "14:00", stadium_id: estadio3.id)
#1B - 2A
calendario51 = Calendar.create(fase: "Octavos de final", fecha: DateTime.new(2018,07,01), hora: "10:00", stadium_id: estadio1.id)
#1D - 2C
calendario52 = Calendar.create(fase: "Octavos de final", fecha: DateTime.new(2018,07,01), hora: "14:00", stadium_id: estadio6.id)
#1E - 2F
calendario53 = Calendar.create(fase: "Octavos de final", fecha: DateTime.new(2018,07,02), hora: "10:00", stadium_id: estadio8.id)
#1G - 2H
calendario54 = Calendar.create(fase: "Octavos de final", fecha: DateTime.new(2018,07,02), hora: "14:00", stadium_id: estadio7.id)
#1F - 2E
caledanrio55 = Calendar.create(fase: "Octavos de final", fecha: DateTime.new(2018,07,03), hora: "10:00", stadium_id: estadio2.id)
#1H - 2G
calendario56 = Calendar.create(fase: "Octavos de final", fecha: DateTime.new(2018,07,03), hora: "14:00", stadium_id: estadio11.id)
#Ganador 49 - Ganador 50
calendario57 = Calendar.create(fase: "Cuartos de final", fecha: DateTime.new(2018,07,06), hora: "10:00", stadium_id: estadio6.id)
#Ganador 53 - Ganador 54
calendario58 = Calendar.create(fase: "Cuartos de final", fecha: DateTime.new(2018,07,06), hora: "14:00", stadium_id: estadio5.id)
#Ganador 55 - Ganador 56
calendario59 = Calendar.create(fase: "Cuartos de final", fecha: DateTime.new(2018,07,07), hora: "10:00", stadium_id: estadio8.id)
#Ganador 51 - Ganador 52
calendario60 = Calendar.create(fase: "Cuartos de final", fecha: DateTime.new(2018,07,07), hora: "14:00", stadium_id: estadio3.id)
#Ganador 57 - Ganador 58
calendario61 = Calendar.create(fase: "Semifinales", fecha: DateTime.new(2018,07,10), hora: "14:00", stadium_id: estadio2.id)
#Ganador 59 - Ganador 60
calendario62 = Calendar.create(fase: "Semifinales", fecha: DateTime.new(2018,07,11), hora: "14:00", stadium_id: estadio1.id)
#Perdedor 61 - Perdedor 62
calendario63 = Calendar.create(fase: "Tercer puesto", fecha: DateTime.new(2018,07,14), hora: "10:00", stadium_id: estadio2.id)
#Ganador 61 - Ganador 62
calendario64 = Calendar.create(fase: "Final", fecha: DateTime.new(2018,07,15), hora: "11:00", stadium_id: estadio1.id)

#CREACIÓN DE PARTIDOS. NO LO HACEMOS EN UNA SEED APARTE PARA EVITAR LA CREACIÓN DE DOS VARIABLES DE INSTANCIA

partido2 = Match.create(calendar_id: calendario1.id, country_id: @rusG.id)
partido1 = Match.create(calendar_id: calendario1.id, country_id: @arabsauG.id)
Match.create(calendar_id: calendario2.id, country_id: @egiG.id)
Match.create(calendar_id: calendario2.id, country_id: @uruG.id)
Match.create(calendar_id: calendario3.id, country_id: @marru.id)
Match.create(calendar_id: calendario3.id, country_id: @iraG.id)
Match.create(calendar_id: calendario4.id, country_id: @portG.id)
Match.create(calendar_id: calendario4.id, country_id: @espG.id)
Match.create(calendar_id: calendario5.id, country_id: @franG.id)
Match.create(calendar_id: calendario5.id, country_id: @ausG.id)
Match.create(calendar_id: calendario6.id, country_id: @argG.id)
Match.create(calendar_id: calendario6.id, country_id: @islG.id)
Match.create(calendar_id: calendario7.id, country_id: @peruG.id)
Match.create(calendar_id: calendario7.id, country_id: @dinG.id)
Match.create(calendar_id: calendario8.id, country_id: @croG.id)
Match.create(calendar_id: calendario8.id, country_id: @nigG.id)
Match.create(calendar_id: calendario9.id, country_id: @costG.id)
Match.create(calendar_id: calendario9.id, country_id: @serG.id)
Match.create(calendar_id: calendario10.id, country_id: @aleG.id)
Match.create(calendar_id: calendario10.id, country_id: @mexG.id)
Match.create(calendar_id: calendario11.id, country_id: @braG.id)
Match.create(calendar_id: calendario11.id, country_id: @suiG.id)
Match.create(calendar_id: calendario12.id, country_id: @sueciaG.id)
Match.create(calendar_id: calendario12.id, country_id: @cor.id)
Match.create(calendar_id: calendario13.id, country_id: @belG.id)
Match.create(calendar_id: calendario13.id, country_id: @panG.id)
Match.create(calendar_id: calendario14.id, country_id: @tunG.id)
Match.create(calendar_id: calendario14.id, country_id: @ingG.id)
Match.create(calendar_id: calendario15.id, country_id: @colG.id)
Match.create(calendar_id: calendario15.id, country_id: @japonG.id)
Match.create(calendar_id: calendario16.id, country_id: @polG.id)
Match.create(calendar_id: calendario16.id, country_id: @senG.id)
Match.create(calendar_id: calendario17.id, country_id: @rusG.id)
Match.create(calendar_id: calendario17.id, country_id: @egiG.id)
Match.create(calendar_id: calendario18.id, country_id: @portG.id)
Match.create(calendar_id: calendario18.id, country_id: @marru.id)
Match.create(calendar_id: calendario19.id, country_id: @uruG.id)
Match.create(calendar_id: calendario19.id, country_id: @arabsauG.id)
Match.create(calendar_id: calendario20.id, country_id: @iraG.id)
Match.create(calendar_id: calendario20.id, country_id: @espG.id)
Match.create(calendar_id: calendario21.id, country_id: @dinG.id)
Match.create(calendar_id: calendario21.id, country_id: @ausG.id)
Match.create(calendar_id: calendario22.id, country_id: @franG.id)
Match.create(calendar_id: calendario22.id, country_id: @peruG.id)
Match.create(calendar_id: calendario23.id, country_id: @argG.id)
Match.create(calendar_id: calendario23.id, country_id: @croG.id)
Match.create(calendar_id: calendario24.id, country_id: @braG.id)
Match.create(calendar_id: calendario24.id, country_id: @costG.id)
Match.create(calendar_id: calendario25.id, country_id: @nigG.id)
Match.create(calendar_id: calendario25.id, country_id: @islG.id)
Match.create(calendar_id: calendario26.id, country_id: @serG.id)
Match.create(calendar_id: calendario26.id, country_id: @suiG.id)
Match.create(calendar_id: calendario27.id, country_id: @belG.id)
Match.create(calendar_id: calendario27.id, country_id: @tunG.id)
Match.create(calendar_id: calendario28.id, country_id: @cor.id)
Match.create(calendar_id: calendario28.id, country_id: @mexG.id)
Match.create(calendar_id: calendario29.id, country_id: @aleG.id)
Match.create(calendar_id: calendario29.id, country_id: @sueciaG.id)
Match.create(calendar_id: calendario30.id, country_id: @ingG.id)
Match.create(calendar_id: calendario30.id, country_id: @panG.id)
Match.create(calendar_id: calendario31.id, country_id: @japonG.id)
Match.create(calendar_id: calendario31.id, country_id: @senG.id)
Match.create(calendar_id: calendario32.id, country_id: @polG.id)
Match.create(calendar_id: calendario32.id, country_id: @colG.id)
Match.create(calendar_id: calendario33.id, country_id: @uruG.id)
Match.create(calendar_id: calendario33.id, country_id: @rusG.id)
Match.create(calendar_id: calendario34.id, country_id: @arabsauG.id)
Match.create(calendar_id: calendario34.id, country_id: @egiG.id)
Match.create(calendar_id: calendario35.id, country_id: @espG.id)
Match.create(calendar_id: calendario35.id, country_id: @marru.id)
Match.create(calendar_id: calendario36.id, country_id: @iraG.id)
Match.create(calendar_id: calendario36.id, country_id: @portG.id)
Match.create(calendar_id: calendario37.id, country_id: @ausG.id)
Match.create(calendar_id: calendario37.id, country_id: @peruG.id)
Match.create(calendar_id: calendario38.id, country_id: @dinG.id)
Match.create(calendar_id: calendario38.id, country_id: @franG.id)
Match.create(calendar_id: calendario39.id, country_id: @nigG.id)
Match.create(calendar_id: calendario39.id, country_id: @argG.id)
Match.create(calendar_id: calendario40.id, country_id: @islG.id)
Match.create(calendar_id: calendario40.id, country_id: @croG.id)
Match.create(calendar_id: calendario41.id, country_id: @cor.id)
Match.create(calendar_id: calendario41.id, country_id: @aleG.id)
Match.create(calendar_id: calendario42.id, country_id: @mexG.id)
Match.create(calendar_id: calendario42.id, country_id: @sueciaG.id)
Match.create(calendar_id: calendario43.id, country_id: @serG.id)
Match.create(calendar_id: calendario43.id, country_id: @braG.id)
Match.create(calendar_id: calendario44.id, country_id: @suiG.id)
Match.create(calendar_id: calendario44.id, country_id: @costG.id)
Match.create(calendar_id: calendario45.id, country_id: @japonG.id)
Match.create(calendar_id: calendario45.id, country_id: @polG.id)
Match.create(calendar_id: calendario46.id, country_id: @senG.id)
Match.create(calendar_id: calendario46.id, country_id: @colG.id)
Match.create(calendar_id: calendario47.id, country_id: @panG.id)
Match.create(calendar_id: calendario47.id, country_id: @tunG.id)
Match.create(calendar_id: calendario48.id, country_id: @ingG.id)
Match.create(calendar_id: calendario48.id, country_id: @belG.id)

Event.create(gol: true, match_id: partido1.id, player_id: 2)
Event.create(gol: true, match_id: partido2.id, player_id: 3)
Event.create(gol: true, match_id: partido2.id, player_id: 1)
