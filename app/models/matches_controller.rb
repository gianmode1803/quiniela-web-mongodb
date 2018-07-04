class MatchesController < ApplicationController
  #before_action :set_match, only: [:show, :edit, :update, :destroy]
layout :colocar_layout


  def index
    @matches = Match.all
    @calendars = Calendar.all
    @countries = Country.all

    @calendarios = []
    par_paises = []
    fusionar = false
    @matches.each do | pais |    # Agrupando paises en pares
    	if fusionar == false
    		par_paises[0] = pais
    		fusionar = true
    	else
    		par_paises[1] = pais
    		@calendarios.push par_paises  # Agredando los pares de paises en el arreglo @calendarios
    		#print @calendarios
    		par_paises = []
    		fusionar = false
    	end 
    end
  end


  def new
    @match = Match.new
    @calendar = Calendar.new
    @country = Country.new
  end

  #Recibe el ID del partido
  def devolver_pais_por_partido(valor)

    
  end


 def colocar_layout

      "matches"
  end




end
