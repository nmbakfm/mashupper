class Api::V1::ArtworksController < ApplicationController
  before_action :set_artwork, only: [:show, :update, :destroy]

  # GET /artworks.json
  def index
    @artworks = Artwork.all
  end

  # GET /artworks/1.json
  def show
  end

  # POST /artworks.json
  def create
    @artwork = Artwork.new(artwork_params)
    if @artwork.save
      render :show, status: :created, location: [:api, :v1, @artwork]
    else
      render json: @artwork.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artworks/1.json
  def update
    if @artwork.update(artwork_params)
      render :show, status: :ok, location: [:api, :v1, @artwork]
    else
      render json: @artwork.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artworks/1.json
  def destroy
    @artwork.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork
      @artwork = Artwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artwork_params
      params.permit(:title)
    end
end
