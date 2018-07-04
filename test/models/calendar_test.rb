require 'test_helper'

class CalendarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @calendario = calendars(:one)
  end

#---------------- Test para fase ----------------#

  test "La fase no puede estar vacia" do
    calendario = Calendar.new
    calendario.fecha = "2017-9-7"
    calendario.hora = "11:00"
    calendario.stadium_id = @calendario
    assert_not calendario.save, "Debe llenar el campo fase para guardar"
  end

  test "La fase no puede contener caracteres especiales" do
    calendario = Calendar.new
    calendario.fase = "!@#$%^&*()=,/;]["
    assert calendario.invalid?, "La fase tiene caracteres invalidos"
  end

#---------------- Test para fecha ----------------#

  test "La fecha no puede estar vacia" do
    calendario = Calendar.new
    calendario.fase = "Fase de grupos"
    calendario.hora = "11:00"
    calendario.stadium_id = @calendario
    assert_not calendario.save, "Debe llenar el campo fecha para guardar"
  end

#---------------- Test para hora ----------------#

  test "La hora no puede estar vacia" do
    calendario = Calendar.new
    calendario.fase = "Fase de grupos"
    calendario.fecha = "2017-9-7"
    calendario.stadium_id = @calendario
    assert_not calendario.save, "Debe llenar el campo hora para guardar"
  end

 #---------------- Test para estadio ----------------#

  test "El estadio no puede estar vacío" do
    calendario = Calendar.new
    calendario.fase = "Fase de grupos"
    calendario.fecha = "2017-9-7"
    calendario.hora = "11:00"
    assert_not calendario.save, "Debe llenar el campo estadio para guardar"
  end


  #---------------- Test para fase ----------------#
  # "Final" es la fase con menos caracteres obteniendo 5 en total
  test 'La fase no puede contener menos de 3 caracteres' do
    calendario = Calendar.new
    calendario.fase = 'a' * 2
    assert_not calendario.save, 'La fase no puede ser menor a 3 caracteres'
  end

  #---------------- Test para fase ----------------#
  # Cuartos de final y Octavos de final no tienen mas de 20 caracteres
  test 'La fase no puede contener mas de 20 caracteres' do
    calendario = Calendar.new
    calendario.fase = 'a' * 19
    assert_not calendario.save, 'La fase no puede ser mayor a 20 caracteres'
  end

end
