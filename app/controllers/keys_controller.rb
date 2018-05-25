class KeysController < ApplicationController
  before_action :set_key, only: [:show, :update, :destroy]

  # GET /keys
  # GET /keys.json
  def index
    @keys = Key.all
  end

  # GET /keys/1
  # GET /keys/1.json
  def show
  end

  # POST /keys
  # POST /keys.json
  def create
    @key = Key.new(key_params)

    if @key.save
      render :show, status: :created, location: @key
    else
      render json: @key.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /keys/1
  # PATCH/PUT /keys/1.json
  def update
    if @key.update(key_params)
      render :show, status: :ok, location: @key
    else
      render json: @key.errors, status: :unprocessable_entity
    end
  end

  # DELETE /keys/1
  # DELETE /keys/1.json
  def destroy
    @key.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_key
      @key = Key.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def key_params
      params.require(:key).permit(:tonica, :key)
    end
end
