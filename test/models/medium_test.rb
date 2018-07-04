require 'test_helper'

class MediumTest < ActiveSupport::TestCase
  
  	def setup 
  		@medium = media(:one)
  	end

  	test "No deberia insertar url vacios y mensaje de error" do
  		medium = Medium.new 
  		medium.nombre = "pedro"
      medium.tipo = "imagenes"
      medium.fecha = "2018-06-10"
  		assert_not medium.save, "guardo imagen sin url"
  		assert_equal ["debe colocar la ubicacion del multimedia"], medium.errors[:url]
  	end

  	test "No deberia insertar nombre vacios y mensaje de error" do
  		medium = Medium.new 
  		medium.url = "example.jpg" 
      medium.tipo = "imagenes"
  		medium.fecha = "2018-06-10"
  		assert_not medium.save, "guardo imagen sin nombre"
  		assert_equal ["por favor colocar nombre del multimedia"], medium.errors[:nombre]
  	end

  	test "No deberia insertar tipo de media vacio y mensaje de error" do
  		medium = Medium.new 
      medium.nombre = "pedro"
  		medium.url = "example.com" 
  		medium.fecha = "2018-06-10"
  		assert_not medium.save, "especifique tipo de media"
  		assert_equal ["por favor llene tipo de multimedia"], medium.errors[:tipo]
  	end

  	test "No deberia insertar fecha vacia y mensaje de error" do
  		medium = Medium.new 
  		medium.url = "example.com"
      medium.nombre = "pedro"
      medium.tipo = "imagenes" 
  		assert_not medium.save, "especifique tipo de media"
  		assert_equal ["debe colocar fecha de hoy"], medium.errors[:fecha]
  	end

  	test "Campo alto no deberia permitir letras" do
  		medium = Medium.new 
  		medium.alto = "a" 
  		assert_not medium.save, "inserto letra en campo numerico"
  		assert_equal ["este campo debe ser numeros"], medium.errors[:alto]
  	end

  	test "Campo ancho no deberia permitir letras" do
  		medium = Medium.new 
  		medium.ancho = "a" 
  		assert_not medium.save, "inserto letra en campo numerico"
  		assert_equal ["este campo debe ser numeros"], medium.errors[:ancho]
  	end
  	test "Campo size no deberia permitir letras" do
  		medium = Medium.new 
  		medium.size = "a" 
  		assert_not medium.save, "inserto letra en campo numerico"
  		assert_equal ["este campo debe ser numeros"], medium.errors[:size]
  	end

    test "media valido" do
      medium = Medium.new(url: 'prueba.jpg',nombre: 'prueba ',tipo: 'imagen',fecha: '2018-02-28', alto: 1, ancho: 2, size: 3, descripcion: 'prueba' ) 
      assert medium.valid?
    end

    test "media guarda" do
      medium = Medium.new(url: 'prueba.jpg',nombre: 'prueba ',tipo: 'imagen',fecha: '2018-02-28', alto: 1, ancho: 2, size: 3, descripcion: 'prueba' ) 
      assert medium.save
    end
   




end
