class MusicsController < ApplicationController
  before_action :set_music, only: [:show, :update, :destroy]

  # GET /musics
  # GET /musics.json
  def index
    @musics = Music.all
  end

  # GET /musics/1
  # GET /musics/1.json
  def show
  end

  # POST /musics
  # POST /musics.json
  def create
    @music = Music.new(music_params)

    if @music.save
      render :show, status: :created, location: @music
    else
      render json: @music.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /musics/1
  # PATCH/PUT /musics/1.json
  def update
    if @music.update(music_params)
      render :show, status: :ok, location: @music
    else
      render json: @music.errors, status: :unprocessable_entity
    end
  end

  # DELETE /musics/1
  # DELETE /musics/1.json
  def destroy
    @music.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music
      @music = Music.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def music_params
      params.require(:music).permit(:mashup_id, :title, :usage, :beginning_margin_sec)
    end
end
