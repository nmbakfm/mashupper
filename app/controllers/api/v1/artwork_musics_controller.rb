class Api::V1::ArtworkMusicsController < ApplicationController
  before_action :set_artwork_music, only: [:show, :update, :destroy]

  def create
    @artwork_music = ArtworkMusic.new(artwork_music_params)

    if @artwork_music.save
      render :show, status: :created, location: [:api, :v1, @artwork_music]
    else
      render json: @artwork_music.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artwork_musics/1.json
  def update
    if @artwork_music.update(artwork_music_params)
      render :show, status: :ok, location: [:api, :v1, @artwork_music]
    else
      render json: @artwork_music.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artwork_musics/1.json
  def destroy
    @artwork_music.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork_music
      @artwork_music = ArtworkMusic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artwork_music_params
      params.permit(:artwork_id, :music_id, :usage)
    end
end
