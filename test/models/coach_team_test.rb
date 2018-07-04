require 'test_helper'

class CoachTeamTest < ActiveSupport::TestCase

    def setup 
      @country = country = Country.create(:nombre => 'Arabia Saudita', 
              :apodo => 'The Falcons', :grupo => 'A', 
              :escudo => 'public/countries/AraLo.png', 
              :bandera => 'public/countries/AraBan.png')

      @arab_coa = arab_coa = Coach.create(#Arabia Saudita
            :nombre => "Juan Antonio",
            :apellido => "Pizzi",
            :apodo => "Pizzigol",
            :fecha_nacimiento => Date.new(1968,6,7),
            :ciudad_nacimiento => "Santa Fe")
    end


    test "Fecha de debut no puede ser nula" do
      coachteam = CoachTeam.new
      coachteam.coach_id = @arab_coa.id
      coachteam.country_id  = @country.id
      
      assert_not coachteam.save, "Guardo entrenador sin fecha de debut"
      assert_equal ["Por favor colocar fecha de debut del entrenador con la seleccion"], coachteam.errors[:debut]
    end


    test "Country_id debe ser válido" do
      coachteam = CoachTeam.new
      coachteam.debut = Date.new(2017,11,28)
      coachteam.coach_id = @arab_coa.id
      coachteam.country_id  = 500

      assert_not coachteam.save, "ID de pais no existe"
    end

    test "Coach_id debe ser válido" do
      coachteam = CoachTeam.new
      coachteam.debut = Date.new(2017,11,28)
      coachteam.coach_id = 500
      coachteam.country_id  = @country.id

      assert_not coachteam.save, "ID de entrenador no existe"
    end

    test "Coach_id y Country_id deben ser válidos" do
      coachteam = CoachTeam.new
      coachteam.debut = Date.new(2017,11,28)
      coachteam.coach_id = 500
      coachteam.country_id  = 500

      assert_not coachteam.save, "ID de entrenador y pais no existen"
    end

    test "Metodo save para la n-n entrenador pais" do
      coachteam = CoachTeam.new
      coachteam.debut = Date.new(2017,11,28)
      coachteam.coach_id = @arab_coa.id
      coachteam.country_id  = @country.id

      assert coachteam.save
    end

    test "N-N entrenador pais valida" do
      coachteam = CoachTeam.new
      coachteam.debut = Date.new(2017,11,28)
      coachteam.coach_id = @arab_coa.id
      coachteam.country_id  = @country.id

      assert coachteam.valid?
    end

end
