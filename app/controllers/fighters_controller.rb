class FightersController < ApplicationController
  before_action :set_fighter, only: [:show, :update, :destroy]

include Giphy

  # GET /fighters
  # GET /fighters.json
  def index
    @fighters = Fighter.all

    render json: @fighters
  end

  # GET /fighters/1
  # GET /fighters/1.json
  def show
    render json: @fighter
  end

  # POST /fighters
  # POST /fighters.json
  def create
    @fighter = Fighter.new(fighter_params)

    if @fighter.save
      render json: @fighter, status: :created, location: @fighter
    else
      render json: @fighter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fighters/1
  # PATCH/PUT /fighters/1.json
  def update
    @fighter = Fighter.find(params[:id])

    if @fighter.update(fighter_params)
      head :no_content
    else
      render json: @fighter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fighters/1
  # DELETE /fighters/1.json
  def destroy
    @fighter.destroy

    head :no_content
  end

  private

    def set_fighter
      @fighter = Fighter.find(params[:id])
    end

    def fighter_params
      params.require(:fighter).permit(:giphy_id, :created_at, :updated_at)
    end
end
