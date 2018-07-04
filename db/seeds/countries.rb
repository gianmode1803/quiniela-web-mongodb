# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
Country.delete_all

Country.create(
	:nombre => 'Senegal', 
	:apodo => 'Les Lions de la Téranga', 
	:grupo => 'H', :escudo => 'https://i.imgur.com/aHNWkHQ.png?1', 
	:bandera => 'https://i.imgur.com/lQbRjG6.png?1')

Country.create( 
	:nombre => 'Arabia Saudita', 
	:apodo => 'The Falcons', 
	:grupo => 'A', 
	:escudo => 'https://i.imgur.com/bK0AD9J.png?1', 
	:bandera => 'https://i.imgur.com/c1PuGQG.jpg?1')

Country.create( 
	:nombre => 'Túnez', 
	:apodo => 'The Eagles of Carthage', 
	:grupo => 'G', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')



Country.create(
	:nombre => 'Rusia', 
	:apodo => 'Escuadrón Ruso', 
	:grupo => 'A', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create(
	:nombre => 'Egipto', 
	:apodo => 'Los faraones', 
	:grupo => 'A', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create(
	:nombre => 'Uruguay', 
	:apodo => 'La Celeste', 
	:grupo => 'A', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')


Country.create(
	:nombre => 'Portugal', 
	:apodo => 'Lusos', 
	:grupo => 'B', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create(
	:nombre => 'España', 
	:apodo => 'La Roja', 
	:grupo => 'B', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'Marruecos', 
	:apodo => 'Los Leones del Atlas', 
	:grupo => 'B', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create(
	:nombre => 'Iran', 
	:apodo => 'Melli Príncipes de Persia', 
	:grupo => 'B', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create(
	:nombre => 'Francia', 
	:apodo => 'Les Bleus', 
	:grupo => 'C', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')


Country.create(
	 
	:nombre => 'Australia', 
	:apodo => 'Socceroos', 
	:grupo => 'C', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create(
	 
	:nombre => 'Perú', 
	:apodo => 'La Rojiblanca', 
	:grupo => 'C', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create(
	 
	:nombre => 'Dinamarca', 
	:apodo => 'La Dinamita Roja', 
	:grupo => 'C', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create(
	 
	:nombre => 'Argentina', 
	:apodo => 'Albiceleste', 
	:grupo => 'D', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create(
	 
	:nombre => 'Islandia', 
	:apodo => 'Los Vikingos', 
	:grupo => 'D', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create(
	 
	:nombre => 'Croacia', 
	:apodo => 'Vatreni', 
	:grupo => 'D', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create(
	 
	:nombre => 'Nigeria', 
	:apodo => 'Las Súper Águilas', 
	:grupo => 'D', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'Brasil', 
	:apodo => 'La Canarinha', 
	:grupo => 'E', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'Suiza', 
	:apodo => 'Schweizer Nati', 
	:grupo => 'E', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'Costa Rica', 
	:apodo => 'Los Ticos', 
	:grupo => 'E', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'Serbia', 
	:apodo => 'Las águilas blancas', 
	:grupo => 'E', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'Alemania', 
	:apodo => 'Die Mannschaft (El equipo)', 
	:grupo => 'F', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'México', 
	:apodo => 'El Tri', 
	:grupo => 'F', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'Suecia', 
	:apodo => 'Blågult (azules y amarillos)', 
	:grupo => 'F', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'República de Corea', 
	:apodo => 'Tigres de Asia', 
	:grupo => 'F', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'Bélgica', 
	:apodo => 'Les Diables Rouges', 
	:grupo => 'G', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'Panamá', 
	:apodo => 'Los Canaleros', 
	:grupo => 'G', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create(
	:nombre => 'Inglaterra', 
	:apodo => 'Los tres leones', 
	:grupo => 'G', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'Polonia', 
	:apodo => 'Biało-czerwoni (Blancos y rojos)', 
	:grupo => 'H', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'Colombia', 
	:apodo => 'La Tricolor', 
	:grupo => 'H', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

Country.create( 
	:nombre => 'Japón', 
	:apodo => 'Los Samuráis Azules', 
	:grupo => 'H', 
	:escudo => 'https://i.imgur.com/4XaHcp5.png?1', 
	:bandera => 'https://i.imgur.com/y8kOwuU.png?1')

=end