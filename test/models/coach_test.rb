require 'test_helper'

class CoachTest < ActiveSupport::TestCase



    test "No debe insertar entrenador sin nombre" do
      coach = Coach.new
      coach.apellido = "Pizzi"
      coach.apodo = "Pizzigol"
      coach.fecha_nacimiento = Date.new(1968,6,7)
      coach.ciudad_nacimiento = "Santa Fe"
      
      assert_not coach.save, "Guardo entrenador sin nombre"
      assert_equal "Por favor colocar nombre del entrenador", coach.errors[:nombre][0]
    end



    test "No debe insertar entrenador sin apellido" do
      coach = Coach.new
      coach.nombre = "Juan Antonio"
      coach.apodo = "Pizzigol"
      coach.fecha_nacimiento = Date.new(1968,6,7)
      coach.ciudad_nacimiento = "Santa Fe"
      
      assert_not coach.save, "Guardo entrenador sin apellido"
      assert_equal "Por favor colocar apellido del entrenador", coach.errors[:apellido][0]
    end


    test "No debe insertar entrenador sin fecha de nacimiento" do
      coach = Coach.new
      coach.nombre = "Juan Antonio"
      coach.apellido = "Pizzi"
      coach.apodo = "Pizzigol"
      coach.ciudad_nacimiento = "Santa Fe"
      
      assert_not coach.save, "Guardo entrenador sin fecha de nacimiento"
      assert_equal ["Por favor colocar fecha de nacimiento del entrenador"], coach.errors[:fecha_nacimiento]
    end

    
    test "No debe insertar entrenador sin ciudad de nacimiento" do
      coach = Coach.new
      coach.nombre = "Juan Antonio"
      coach.apellido = "Pizzi"
      coach.apodo = "Pizzigol"
      coach.fecha_nacimiento = Date.new(1968,6,7)
      
      assert_not coach.save, "Guardo entrenador sin ciudad de nacimiento"
      assert_equal "Por favor colocar ciudad de nacimiento del entrenador", coach.errors[:ciudad_nacimiento][0]
    end

    test "Metodo save para el entrenador" do
      coach = Coach.new
      coach.nombre = "Juan Antonio"
      coach.apellido = "Pizzi"
      coach.apodo = "Pizzigol"
      coach.fecha_nacimiento = Date.new(1968,6,7)
      coach.ciudad_nacimiento = "Santa Fe"

      assert coach.save
    end

    test "Entrenador valido" do
      coach = Coach.new
      coach.nombre = "Juan Antonio"
      coach.apellido = "Pizzi"
      coach.apodo = "Pizzigol"
      coach.fecha_nacimiento = Date.new(1968,6,7)
      coach.ciudad_nacimiento = "Santa Fe"

      assert coach.valid?
    end

end
