class ChordsController < ApplicationController
  before_action :set_chord, only: [:show, :update, :destroy]

  # GET /chords
  # GET /chords.json
  def index
    @chords = Chord.all
  end

  # GET /chords/1
  # GET /chords/1.json
  def show
  end

  # POST /chords
  # POST /chords.json
  def create
    @chord = Chord.new(chord_params)

    if @chord.save
      render :show, status: :created, location: @chord
    else
      render json: @chord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chords/1
  # PATCH/PUT /chords/1.json
  def update
    if @chord.update(chord_params)
      render :show, status: :ok, location: @chord
    else
      render json: @chord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chords/1
  # DELETE /chords/1.json
  def destroy
    @chord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chord
      @chord = Chord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chord_params
      params.require(:chord).permit(:music_id, :chord_name, :primary_category, :root, :bar, :beat, :harmony_func)
    end
end
