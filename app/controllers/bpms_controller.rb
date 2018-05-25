class BpmsController < ApplicationController
  before_action :set_bpm, only: [:show, :update, :destroy]

  # GET /bpms
  # GET /bpms.json
  def index
    @bpms = Bpm.all
  end

  # GET /bpms/1
  # GET /bpms/1.json
  def show
  end

  # POST /bpms
  # POST /bpms.json
  def create
    @bpm = Bpm.new(bpm_params)

    if @bpm.save
      render :show, status: :created, location: @bpm
    else
      render json: @bpm.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bpms/1
  # PATCH/PUT /bpms/1.json
  def update
    if @bpm.update(bpm_params)
      render :show, status: :ok, location: @bpm
    else
      render json: @bpm.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bpms/1
  # DELETE /bpms/1.json
  def destroy
    @bpm.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bpm
      @bpm = Bpm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bpm_params
      params.require(:bpm).permit(:music_id, :bpm, :bar, :beat)
    end
end
