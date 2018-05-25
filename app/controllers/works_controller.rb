class WorksController < ApplicationController
  before_action :set_work, only: [:show, :update, :destroy]

  # GET /works
  # GET /works.json
  def index
    @works = Work.all
  end

  # GET /works/1
  # GET /works/1.json
  def show
  end

  # POST /works
  # POST /works.json
  def create
    @work = Work.new(work_params)

    if @work.save
      render :show, status: :created, location: @work
    else
      render json: @work.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /works/1
  # PATCH/PUT /works/1.json
  def update
    if @work.update(work_params)
      render :show, status: :ok, location: @work
    else
      render json: @work.errors, status: :unprocessable_entity
    end
  end

  # DELETE /works/1
  # DELETE /works/1.json
  def destroy
    @work.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_params
      params.require(:work).permit(:user_id, :title)
    end
end
