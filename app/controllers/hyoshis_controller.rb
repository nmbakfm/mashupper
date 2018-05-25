class HyoshisController < ApplicationController
  before_action :set_hyoshi, only: [:show, :update, :destroy]

  # GET /hyoshis
  # GET /hyoshis.json
  def index
    @hyoshis = Hyoshi.all
  end

  # GET /hyoshis/1
  # GET /hyoshis/1.json
  def show
  end

  # POST /hyoshis
  # POST /hyoshis.json
  def create
    @hyoshi = Hyoshi.new(hyoshi_params)

    if @hyoshi.save
      render :show, status: :created, location: @hyoshi
    else
      render json: @hyoshi.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hyoshis/1
  # PATCH/PUT /hyoshis/1.json
  def update
    if @hyoshi.update(hyoshi_params)
      render :show, status: :ok, location: @hyoshi
    else
      render json: @hyoshi.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hyoshis/1
  # DELETE /hyoshis/1.json
  def destroy
    @hyoshi.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hyoshi
      @hyoshi = Hyoshi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hyoshi_params
      params.require(:hyoshi).permit(:music_id, :denominator, :numerator, :bar, :beat)
    end
end
