class PhrasesController < ApplicationController
  before_action :set_phrase, only: [:show, :update, :destroy]

  # GET /phrases
  # GET /phrases.json
  def index
    @phrases = Phrase.all
  end

  # GET /phrases/1
  # GET /phrases/1.json
  def show
  end

  # POST /phrases
  # POST /phrases.json
  def create
    @phrase = Phrase.new(phrase_params)

    if @phrase.save
      render :show, status: :created, location: @phrase
    else
      render json: @phrase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /phrases/1
  # PATCH/PUT /phrases/1.json
  def update
    if @phrase.update(phrase_params)
      render :show, status: :ok, location: @phrase
    else
      render json: @phrase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /phrases/1
  # DELETE /phrases/1.json
  def destroy
    @phrase.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phrase
      @phrase = Phrase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phrase_params
      params.require(:phrase).permit(:music_id, :bar, :beat)
    end
end
