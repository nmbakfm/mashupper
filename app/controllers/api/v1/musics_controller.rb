class Api::V1::MusicsController < ApplicationController
  before_action :set_artwork
  before_action :set_music, only: [:show, :update, :destroy]

  # GET /musics.json
  def index
    @musics = Music.all
  end

  # GET /musics/1.json
  def show
  end

  # POST /musics.json
  def create
    @music = Music.build_by_hash(music_params)
    @artwork.musics << @music
    if @music.save
      render :show, status: :created, location: [:api, :v1, @artwork, @music]
    else
      render json: @music.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /musics/1.json
  def update
    if @music.update(music_params)
      render :show, status: :ok, location: @music
    else
      render json: @music.errors, status: :unprocessable_entity
    end
  end

  # DELETE /musics/1.json
  def destroy
    @music.destroy
  end

  private
    def set_artwork
      @artwork = Artwork.find(params[:artwork_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_music
      @music = @artwork.musics.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def music_params
      params.permit!
      params.to_h
    end
end
