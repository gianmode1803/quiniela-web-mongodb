require 'test_helper'

class PoolTest < ActiveSupport::TestCase
  #def setup
  #  @pool = pools(:one)
  #end

  test "no guardar pool con campos nulos" do
    pool = Pool.new
    pool.user_id= 1
    assert_not pool.save, "La quiniela se gurado con campos nulos"
  end

  test "El tipo de pool debe ser valido" do
    pool = Pool.new
    pool.user_id = 1
    pool.tipo = "hola"
    pool.puntos = 0
    pool.valid?
    assert_equal ["El tipo quiniela no es valido"],pool.errors[:tipo]
  end

  test "Los puntos de la quiniela deben ser enteros" do
    pool = Pool.new
    pool.user_id = 1
    pool.tipo = "hola"
    pool.puntos = 0.25
    pool.valid?
    assert_equal ["Los puntos de la quiniela deben ser enteros"],pool.errors[:puntos]
  end
  
   #test "the truth" do
    # assert true
   #end

end
