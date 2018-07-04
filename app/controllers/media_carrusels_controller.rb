class MediaCarruselsController < ApplicationController
  before_action :set_media_carrusel, only: [:show, :edit, :update, :destroy]

  # GET /media_carrusels
  # GET /media_carrusels.json
  def index
    @media_carrusels = MediaCarrusel.all
  end

  # GET /media_carrusels/1
  # GET /media_carrusels/1.json
  def show
  end

  # GET /media_carrusels/new
  def new
    @media_carrusel = MediaCarrusel.new
  end

  # GET /media_carrusels/1/edit
  def edit
  end

  # POST /media_carrusels
  # POST /media_carrusels.json
  def create
    @media_carrusel = MediaCarrusel.new(media_carrusel_params)

    respond_to do |format|
      if @media_carrusel.save
        format.html { redirect_to @media_carrusel, notice: 'Media carrusel was successfully created.' }
        format.json { render :show, status: :created, location: @media_carrusel }
      else
        format.html { render :new }
        format.json { render json: @media_carrusel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_carrusels/1
  # PATCH/PUT /media_carrusels/1.json
  def update
    respond_to do |format|
      if @media_carrusel.update(media_carrusel_params)
        format.html { redirect_to @media_carrusel, notice: 'Media carrusel was successfully updated.' }
        format.json { render :show, status: :ok, location: @media_carrusel }
      else
        format.html { render :edit }
        format.json { render json: @media_carrusel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_carrusels/1
  # DELETE /media_carrusels/1.json
  def destroy
    @media_carrusel.destroy
    respond_to do |format|
      format.html { redirect_to media_carrusels_url, notice: 'Media carrusel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_carrusel
      @media_carrusel = MediaCarrusel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_carrusel_params
      params.fetch(:media_carrusel, {})
    end
end
