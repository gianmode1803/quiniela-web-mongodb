class MediaVideosController < ApplicationController
  before_action :set_media_video, only: [:show, :edit, :update, :destroy]

  # GET /media_videos
  # GET /media_videos.json
  def index
    @media_videos = MediaVideo.all.paginate(:page => params[:page], :per_page => 9)
    #@video = MediaVideo.all.paginate(:page => params[:page]), :per_page => 2)
  end

  # GET /media_videos/1
  # GET /media_videos/1.json
  def show
  end
  
  # GET /media_videos/new
  def new
    @media_video = MediaVideo.new
  end

  # GET /media_videos/1/edit
  def edit
  end

  # POST /media_videos
  # POST /media_videos.json
  def create
    @media_video = MediaVideo.new(media_video_params)

    respond_to do |format|
      if @media_video.save
        format.html { redirect_to @media_video, notice: 'Se ha agregado  video' }
        format.json { render :show, status: :created, location: @media_video }
      else
        format.html { render :new }
        format.json { render json: @media_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_videos/1
  # PATCH/PUT /media_videos/1.json
  def update
    respond_to do |format|
      if @media_video.update(media_video_params)
        format.html { redirect_to @media_video, notice: 'Se ha modificado video' }
        format.json { render :show, status: :ok, location: @media_video }
      else
        format.html { render :edit }
        format.json { render json: @media_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_videos/1
  # DELETE /media_videos/1.json
  def destroy
    @media_video.destroy
    respond_to do |format|
      format.html { redirect_to media_videos_url, notice: 'Se ha eliminado video ' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_video
      @media_video = MediaVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_video_params
      params.require(:media_video).permit(:url, :titulo, :descripcion, :fecha)
    end
end
