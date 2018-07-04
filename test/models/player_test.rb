require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  
  	def setup 
  		@country = country = Country.create(:nombre => 'Arabia Saudita', 
              :apodo => 'The Falcons', :grupo => 'A', 
              :escudo => 'public/countries/AraLo.png', 
              :bandera => 'public/countries/AraBan.png')
  	end



    test "No debe insertar jugador sin nombre" do
      player = Player.new
      player.apellido = "Al-Owais"
      player.fecha_nacimiento = Date.new(1991,10,10)
      player.ciudad_nacimiento = "Al-Hasaa"
      player.posicion = "Portero"
      player.dorsal = 22
      player.apodo = "N/A"
      player.debut =  Date.new(2015,9,1)
      player.participaciones = 5
      player.country_id = @country.id
      player.goles = 0
      

      assert_not player.save, "Guardo jugador sin nombre"
      assert_equal ["Por favor colocar nombre del jugador"], player.errors[:nombre]
    end



    test "No debe insertar jugador sin fecha de nacimiento" do
      player = Player.new
      player.nombre = "Mohammed"
      player.apellido = "Al-Owais"
      player.ciudad_nacimiento = "Al-Hasaa"
      player.posicion = "Portero"
      player.dorsal = 22
      player.apodo = "N/A"
      player.debut =  Date.new(2015,9,1)
      player.participaciones = 5
      player.country_id = @country.id
      player.goles = 0

      assert_not player.save, "Guardo jugador sin fecha de nacimiento"
      assert_equal ["Por favor colocar fecha de nacimiento del jugador"], player.errors[:fecha_nacimiento]
    end


    test "No debe insertar jugador sin posicion" do
      player = Player.new
      player.nombre = "Mohammed"
      player.apellido = "Al-Owais"
      player.fecha_nacimiento = Date.new(1991,10,10)
      player.ciudad_nacimiento = "Al-Hasaa"
      player.dorsal = 22
      player.apodo = "N/A"
      player.debut =  Date.new(2015,9,1)
      player.participaciones = 5
      player.country_id = @country.id
      player.goles = 0

      assert_not player.save, "Guardo jugador sin posicion"
      assert_equal ["Por favor colocar posicion del jugador"], player.errors[:posicion]
    end

    
    test "No debe insertar jugador sin dorsal" do
      player = Player.new
      player.nombre = "Mohammed"
      player.apellido = "Al-Owais"
      player.fecha_nacimiento = Date.new(1991,10,10)
      player.ciudad_nacimiento = "Al-Hasaa"
      player.posicion = "Portero"
      player.apodo = "N/A"
      player.debut =  Date.new(2015,9,1)
      player.participaciones = 5
      player.country_id = @country.id
      player.goles = 0

      assert_not player.save, "Guardo jugador sin dorsal"
      assert_equal "Por favor colocar dorsal del jugador", player.errors[:dorsal][0]
    end

    test "No debe insertar jugador sin participaciones" do
      player = Player.new
      player.nombre = "Mohammed"
      player.apellido = "Al-Owais"
      player.fecha_nacimiento = Date.new(1991,10,10)
      player.ciudad_nacimiento = "Al-Hasaa"
      player.posicion = "Portero"
      player.dorsal = 22
      player.apodo = "N/A"
      player.debut =  Date.new(2015,9,1)
      player.country_id = @country.id
      player.goles = 0

      assert_not player.save, "Guardo jugador sin participaciones"
      assert_equal "Por favor colocar el numero de participaciones del jugador", player.errors[:participaciones][0]
    end

    test "No debe insertar jugador sin goles" do
      player = Player.new
      player.nombre = "Mohammed"
      player.apellido = "Al-Owais"
      player.fecha_nacimiento = Date.new(1991,10,10)
      player.ciudad_nacimiento = "Al-Hasaa"
      player.posicion = "Portero"
      player.dorsal = 22
      player.apodo = "N/A"
      player.debut =  Date.new(2015,9,1)
      player.participaciones = 5
      player.country_id = @country.id

      assert_not player.save, "Guardo jugador sin goles"
      assert_equal "Por favor colocar el numero de goles anotados por el jugador", player.errors[:goles][0]
    end

    test "No debe insertar jugador sin pais al que pertenece" do
      player = Player.new
      player.nombre = "Mohammed"
      player.apellido = "Al-Owais"
      player.fecha_nacimiento = Date.new(1991,10,10)
      player.ciudad_nacimiento = "Al-Hasaa"
      player.posicion = "Portero"
      player.dorsal = 22
      player.apodo = "N/A"
      player.debut =  Date.new(2015,9,1)
      player.participaciones = 5
      player.goles = 0

      assert_not player.save, "Guardo jugador sin pais perteneciente"
      assert_equal ["Por favor colocar pais del jugador"], player.errors[:country_id]
    end

    test "No debe insertar jugador con dorsal menor que cero" do
      player = Player.new
      player.nombre = "Mohammed"
      player.apellido = "Al-Owais"
      player.fecha_nacimiento = Date.new(1991,10,10)
      player.ciudad_nacimiento = "Al-Hasaa"
      player.posicion = "Portero"
      player.dorsal = -1
      player.apodo = "N/A"
      player.debut =  Date.new(2015,9,1)
      player.participaciones = 5
      player.goles = 0
      player.country_id = @country.id

      assert_not player.save, "Guardo jugador con dorsal negativo"
      assert_equal ["El dorsal del jugador debe ser positivo"], player.errors[:dorsal]
    end

    test "Participaciones deben ser solo numeros" do
      player = Player.new
      player.nombre = "Mohammed"
      player.apellido = "Al-Owais"
      player.fecha_nacimiento = Date.new(1991,10,10)
      player.ciudad_nacimiento = "Al-Hasaa"
      player.posicion = "Portero"
      player.dorsal = 1
      player.apodo = "N/A"
      player.debut =  Date.new(2015,9,1)
      player.participaciones = "p"
      player.goles = 0
      player.country_id = @country.id

      assert_not player.save, "Guardo jugador con participaciones en string"
      assert_equal ["Las participaciones deben ser numericas"], player.errors[:participaciones]
    end

    test "Goles deben ser solo números" do
      player = Player.new
      player.nombre = "Mohammed"
      player.apellido = "Al-Owais"
      player.fecha_nacimiento = Date.new(1991,10,10)
      player.ciudad_nacimiento = "Al-Hasaa"
      player.posicion = "Portero"
      player.dorsal = 1
      player.apodo = "N/A"
      player.debut =  Date.new(2015,9,1)
      player.participaciones = 5
      player.goles = "p"
      player.country_id = @country.id

      assert_not player.save, "Guardo jugador con goles en string"
      assert_equal ["Los goles anotados deben ser numéricos"], player.errors[:goles]
    end

    test "Country_id debe ser válido" do
      player = Player.new
      player.nombre = "Mohammed"
      player.apellido = "Al-Owais"
      player.fecha_nacimiento = Date.new(1991,10,10)
      player.ciudad_nacimiento = "Al-Hasaa"
      player.posicion = "Portero"
      player.dorsal = 1
      player.apodo = "N/A"
      player.debut =  Date.new(2015,9,1)
      player.participaciones = 5
      player.goles = 0
      player.country_id = 1000

      assert_not player.save, "ID de pais no existe"
    end

    test "Metodo save para el jugador" do
      player = Player.new
      player.nombre = "Mohammed"
      player.apellido = "Al-Owais"
      player.fecha_nacimiento = Date.new(1991,10,10)
      player.ciudad_nacimiento = "Al-Hasaa"
      player.posicion = "Portero"
      player.dorsal = 1
      player.apodo = "N/A"
      player.debut =  Date.new(2015,9,1)
      player.participaciones = 5
      player.goles = 0
      player.country_id = @country.id

      assert player.save
    end

    test "Jugador valido" do
      player = Player.new
      player.nombre = "Mohammed"
      player.apellido = "Al-Owais"
      player.fecha_nacimiento = Date.new(1991,10,10)
      player.ciudad_nacimiento = "Al-Hasaa"
      player.posicion = "Portero"
      player.dorsal = 1
      player.apodo = "N/A"
      player.debut =  Date.new(2015,9,1)
      player.participaciones = 5
      player.goles = 0
      player.country_id = @country.id

      assert player.valid?
    end

end
