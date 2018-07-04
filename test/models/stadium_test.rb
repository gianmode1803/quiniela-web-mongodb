require 'test_helper'

class StadiumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @estadio = stadia(:one)
  end

#---------------- Test para el nombre ----------------#

  test "El nombre del estadio no puede estar vacio" do
    estadio = Stadium.new
    estadio.nombre = nil
    assert_not estadio.save, "Debe llenar el campo nombre para guardar"
  end

  test "El nombre del estadio no puede ser alfanumerico" do
    estadio = Stadium.new
    estadio.nombre = "!@#$%^&123*()=,/;]["
    assert estadio.invalid?, "El nombre del estadio tiene caracteres invalidos"
  end

#---------------- Test para la ciudad ----------------#

  test "El nombre de la ciudad no puede estar vacio" do
    estadio = Stadium.new
    estadio.ciudad = nil
    assert_not estadio.save, "Debe llenar el campo ciudad para guardar"
  end

  test "El nombre de la ciudad no puede ser alfanumerico" do
    estadio = Stadium.new
    estadio.ciudad = "!@#$%^&123*()=,/;]["
    assert estadio.invalid?, "El nombre de la ciudad tiene caracteres invalidos"
  end

#---------------- Test para la capacidad ----------------#

  test "La capacidad no puede estar vacio" do
    estadio = Stadium.new
    estadio.capacidad = nil
    assert_not estadio.save, "Debe llenar el campo capacidad para guardar"
  end

  test "La capacidad no puede contener letras" do
    estadio = Stadium.new
    estadio.capacidad = "!@#$%^&Alé*()=,/;]["
    assert estadio.invalid?, "La capacidad no puede contener letras"
  end
end
