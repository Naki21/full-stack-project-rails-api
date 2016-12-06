# frozen_string_literal: true
class FightersController < ProtectedController
  include Giphy
  before_action :set_fighter, only: [:show, :update, :destroy]

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

  # GET /fighter(random)
  def random
    render json: Giphy.random
  end

  # POST /fighters
  # POST /fighters.json
  def create
    @fighter = current_user.fighters.build(fighter_params)
    if @fighter.save
      render json: @fighter, status: :created
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
    @fighter = current_user.fighters.find(params[:id])
  end

  def fighter_params
    params.require(:fighter).permit(:url, :user, :my_fighter, :created_at, :updated_at, :user_id)
  end
end
