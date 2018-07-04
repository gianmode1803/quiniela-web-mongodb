class MediaController < ApplicationController

  
  	
  
  require 'flickraw'

  before_action :set_flickr, only: [:create, :destroy]
  before_action :set_medium, only: [:show, :edit, :update, :destroy]
  #before_action :set_tag, only: [:show, :edit, :update, :destroy]
  # GET /media
  # GET /media.json
  def index
    @media = Medium.all
    #@media = Medium.order('created_at DESC')
  end

  # GET /media/1
  # GET /media/1.json
  def show
  end

  # GET /media/new
  def new
    @medium = Medium.new
    @tag = Tag.new

  end

  # GET /media/1/edit
  def edit
  end

  # POST /media
  # POST /media.json
  def create
    @medium = Medium.new(medium_params)  
    unless @medium.url.nil?
        @medium.url = params[:medium][:url].path  
      end 
      respond_to do |format|
        #Se sube la foto con la api
        photo_id = flickr.upload_photo params[:medium][:url].path , :title => params[:medium][:nombre] ,:description => params[:medium][:descripcion]
        photo_url = FlickRaw.url_o(flickr.photos.getInfo(photo_id: photo_id))
        if @medium.save(context: :gallery)
          begin
            unless params[:medium][:url].nil? 
              params[:medium][:url] = photo_url
              #una vez recibida la url y validado los campos se actualiza el url
              @medium.update(medium_params)
            end 
          rescue => ex
            @mediun.destroy
            logger.error ex.message 
          end
          
          format.html { redirect_to @medium, notice: 'La imagen ya fue creada.' }
          format.json { render :show, status: :created, location: @medium }
        else 
          format.html { render :new }
        format.json { render json: @medium.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /media/1
  # PATCH/PUT /media/1.json
  def update
    respond_to do |format|
      if @medium.update(medium_params)
        format.html { redirect_to @medium, notice: 'La imagen ya fue actualizada.' }
        format.json { render :show, status: :ok, location: @medium }
      else
        format.html { render :edit }
        format.json { render json: @medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media/1
  # DELETE /media/1.json
  def destroy
    @medium.destroy
    respond_to do |format|
      format.html { redirect_to media_url, notice: 'La imagen fue borrada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medium
      @medium = Medium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    private

    def medium_params
      params.require(:medium).permit(:url, :nombre, :tipo, :fecha, :ancho, :alto, :size, :descripcion, tag_ids:[], tags_attributes: [:nombre])
    end

    def set_flickr
      FlickRaw.api_key = ENV['API_KEY']
      FlickRaw.shared_secret = ENV['SHARED_SECRET']
  
      flickr.access_token = ENV['ACCESS_TOKEN']
      flickr.access_secret = ENV['ACCESS_SECRET']
  end  


end
