class TensionsController < ApplicationController
  before_action :set_tension, only: [:show, :update, :destroy]

  # GET /tensions
  # GET /tensions.json
  def index
    @tensions = Tension.all
  end

  # GET /tensions/1
  # GET /tensions/1.json
  def show
  end

  # POST /tensions
  # POST /tensions.json
  def create
    @tension = Tension.new(tension_params)

    if @tension.save
      render :show, status: :created, location: @tension
    else
      render json: @tension.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tensions/1
  # PATCH/PUT /tensions/1.json
  def update
    if @tension.update(tension_params)
      render :show, status: :ok, location: @tension
    else
      render json: @tension.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tensions/1
  # DELETE /tensions/1.json
  def destroy
    @tension.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tension
      @tension = Tension.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tension_params
      params.require(:tension).permit(:tension)
    end
end
