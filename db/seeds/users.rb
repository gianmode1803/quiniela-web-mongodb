# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  co=Country.all.first



	User.create(
  :cedula => "12345678",		
  :email => "admin@gmail.com",
  :password => "123456",		
  :nombre => "admin", 
  :apellido => "admin", 
  :telefono => "04164215303", 
  :nacimiento => DateTime.new(1994,02,17), 
  :estatus => "activo",
  :admin => "true",
  :twitter => "@admin",
  :instagram => "@admin",
  :facebook => "@admin",
  :postal => "1021",
  :country_id => co.id,
  :created_at => DateTime.now,
  :updated_at => DateTime.now) 

  User.create(
  :cedula => "87654321",		
  :email => "user@gmail.com",
  :password => "123456",		
  :nombre => "user", 
  :apellido => "user", 
  :telefono => "04241629017", 
  :nacimiento => DateTime.new(1990,02,20), 
  :estatus => "activo",
  :admin => "false",
  :twitter => "@user",
  :instagram => "@user",
  :facebook => "@user",
  :postal => "1021",
  :country_id => co.id,
  :created_at => DateTime.now,
  :updated_at => DateTime.now)   	