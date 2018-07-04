class MatchesController < ApplicationController
  #before_action :set_match, only: [:show, :edit, :update, :destroy]
layout :colocar_layout
  before_action :set_match, only: [:show, :edit, :update, :destroy]


  def index
    @matches1 = Match.all
    @matches= Match.order('created_at DESC')
    @calendars = Calendar.all
    @countries = Country.all
    
    @calendarios = []
    par_paises = []
    fusionar = false
    @matches1.each do | pais |    # Agrupando paises en pares
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

  def create
    @country = Match.new(match_params)

    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'Match was successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @match.update(match_params)
        format.html { redirect_to @match, notice: 'Match was successfully updated' }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #Recibe el ID del partido
  def devolver_pais_por_partido(valor)

    
  end


 def colocar_layout

      "matches"
  end




end
