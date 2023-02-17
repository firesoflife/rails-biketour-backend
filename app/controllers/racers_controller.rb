class RacersController < ApplicationController
  before_action :set_racer, only: [:show, :update, :destroy]

  # GET /racers
  def index
    @racers = Racer.all

    render json: @racers
  end

  # GET /racers/1
  def show
    render json: @racer
  end

  # POST /racers
  def create
    @racer = Racer.new(racer_params)

    if @racer.save
      render json: @racer, status: :created, location: @racer
    else
      render json: @racer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /racers/1
  def update
    if @racer.update(racer_params)
      render json: @racer
    else
      render json: @racer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /racers/1
  def destroy
    @racer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_racer
      @racer = Racer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def racer_params
      params.require(:racer).permit(:f_name, :l_name, :city, :state, :lat, :lng)
    end
end
