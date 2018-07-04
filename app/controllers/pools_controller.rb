class PoolsController < ApplicationController
layout "administrator"

  def new
    @pool = Pool.new()
    predictions =  @pool.predictions.build
    goal_pools = predictions.goal_pools.build
    @calendars = Calendar.countries("Fase de grupos")
    @calendars_octavos = Calendar.dates_of("Octavos de final")
    @calendars_cuartos = Calendar.dates_of("Cuartos de final")
    @calendars_semifinal = Calendar.dates_of("Semifinales")
    @calendars_tercer = Calendar.dates_of("Tercer puesto")
    @calendars_final = Calendar.dates_of("Final")
=begin
    predictions =  @pool.predictions.build
    goal_pools = predictions.goal_pools.build

    @predicciones = []
    @predicciones = params[:predicciones]
    @pool_llenado = params[:pool]
=end
    #debugger

    #@calendar = Calendar.find(1)
    #@calendar = Calendar.countries_of(params[:fase,:fecha,:grupo])
  end

  def create
    @pool = Pool.new(pool_params)
    @predicciones = []

    @calendars = Calendar.countries("Fase de grupos")
    @calendars_octavos = Calendar.dates_of("Octavos de final")
    @calendars_cuartos = Calendar.dates_of("Cuartos de final")
    @calendars_semifinal = Calendar.dates_of("Semifinales")
    @calendars_tercer = Calendar.dates_of("Tercer puesto")
    @calendars_final = Calendar.dates_of("Final")
    if @pool.save
        redirect_to pools_path
    else
        redirect_to new_pool_path
    end

=begin
    if @pool.save
      #flash[:success] = "La quiniela se ha creado exitosamente"
      #redirect_to pool_path(@pool)
      #render "new"

      @pool.predictions.each_with_index do |prediction, i|
        prediction.goal_pools.each do |goal_pool|
          @predicciones.push([prediction.id,goal_pool.country_id,goal_pool.cantidad])
        end
      end
      #debugger

      #redirect_to [:edit, @pool]
      #redirect_to new_pool_path(predicciones: predicciones, pool: @pool)
      redirect_to edit_pool_path(@pool)

      #redirect_to pools_path
    else
      flash.now[:danger] = "La quiniela no pudo ser creada"
      render "new"
    end
=end
  end

  def edit
    @pool = Pool.find(params[:id])
  end

  def update
    @pool = Pool.find(params[:id])
    if @pool.update_attributes(allowed_params)
    redirect_to @pool, notice: 'Successfully updated project'
  else
    render :edit
  end
  end

  def show
    #@pool = Pool.find(params[:id])
  end

  def index
    @pools = Pool.all
  end

  def destroy
    @pool = Pool.find(params[:id])
    @pool.destroy
    respond_to do |format|
      format.html { redirect_to pools_url, notice: 'Pool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
  def calcular_clasificados()

  end

  def pool_params
    params.require(:pool).permit(:puntos, :tipo, :user_id,predictions_attributes: [:_destroy, :id, :calendar_id, goal_pools_attributes: [:id, :cantidad,:country_id, :_destroy]])
  end




end
