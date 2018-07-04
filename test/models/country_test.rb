require 'test_helper'

class CountryTest < ActiveSupport::TestCase
  
  	#def setup 
  	#	@country = country(:one)
  	#end

    test "No debe insertar pais sin nombre" do
      country = Country.new 
      country.grupo = "A" 
      country.apodo = "xs"
      country.escudo = "imagen"
      country.bandera = "imagen"

      assert_not country.save, "Guardo pais sin nombre"
      assert_equal "Por favor colocar nombre del pais", country.errors[:nombre][0]
    end


    test "No debe insertar pais sin grupo" do
      country = Country.new 
      country.nombre = "pais1" 
      country.apodo = "xs"
      country.escudo = "imagen"
      country.bandera = "imagen"

      assert_not country.save, "Guardo pais sin grupo"
      assert_equal "Por favor colocar grupo correspondiente", country.errors[:grupo][0]
    end


    test "No debe insertar pais sin escudo" do
      country = Country.new 
      country.grupo = "A" 
      country.apodo = "xs"
      country.nombre = "Pais1"
      country.bandera = "imagen"

      assert_not country.save, "Guardo pais sin escudo"
      assert_equal ["Por favor colocar escudo del pais"], country.errors[:escudo]
    end

    
    test "No debe insertar pais sin bandera" do
      country = Country.new 
      country.grupo = "A" 
      country.apodo = "xs"
      country.escudo = "imagen"
      country.nombre = "Pais1"

      assert_not country.save, "Guardo pais sin bandera"
      assert_equal ["Por favor colocar bandera del pais"], country.errors[:bandera]
    end

    test "Grupo no puede ser mayor a una letra" do
      country = Country.create(:nombre => 'Arabia Saudita', 
              :apodo => 'The Falcons', :grupo => 'AA', 
              :escudo => 'public/countries/AraLo.png', 
              :bandera => 'public/countries/AraBan.png')
      assert_not country.save, "Grupo tiene mas de una letra"
      assert_equal "Grupo debe ser un solo caracter", country.errors[:grupo][0]
    end

    test "Grupo no puede estar fuera del rango de letras" do
      country = Country.create(:nombre => 'Arabia Saudita', 
              :apodo => 'The Falcons', :grupo => 'Z', 
              :escudo => 'public/countries/AraLo.png', 
              :bandera => 'public/countries/AraBan.png')
      assert_not country.save, "Grupo esta fuera del rango A-H"
      assert_equal ["Grupo debe estar entre los valores A-H"], country.errors[:grupo]
    end

    test "Nombre del pais no puede estar vacio" do
      country = Country.create(:nombre => '', 
              :apodo => 'The Falcons', :grupo => 'A', 
              :escudo => 'public/countries/AraLo.png', 
              :bandera => 'public/countries/AraBan.png')
      assert_not country.save, "Nombre del pais no puede estar vacio"
    end

    test "Metodo save para el pais" do
      country = Country.create(:nombre => 'Arabia Saudita', 
              :apodo => 'The Falcons', :grupo => 'A', 
              :escudo => 'public/countries/AraLo.png', 
              :bandera => 'public/countries/AraBan.png')
      assert country.save
    end

    test "Pais valido" do
      country = Country.create(:nombre => 'Arabia Saudita', 
              :apodo => 'The Falcons', :grupo => 'A', 
              :escudo => 'public/countries/AraLo.png', 
              :bandera => 'public/countries/AraBan.png')
      assert country.valid?
    end


end
