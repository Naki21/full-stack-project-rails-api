class BattlesController < ApplicationController
  before_action :set_battle, only: [:show, :update, :destroy]

  # GET /battles
  # GET /battles.json
  def index
    @battles = Battle.all

    render json: @battles
  end

  # GET /battles/1
  # GET /battles/1.json
  def show
    render json: @battle
  end

  # POST /battles
  # POST /battles.json
  def create
    @battle = Battle.new(battle_params)

    if @battle.save
      render json: @battle, status: :created, location: @battle
    else
      render json: @battle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /battles/1
  # PATCH/PUT /battles/1.json
  def update
    @battle = Battle.find(params[:id])

    if @battle.update(battle_params)
      head :no_content
    else
      render json: @battle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /battles/1
  # DELETE /battles/1.json
  def destroy
    @battle.destroy

    head :no_content
  end

  private

    def set_battle
      @battle = Battle.find(params[:id])
    end

    def battle_params
      params.require(:battle).permit(:f_val, :u_val, :barrack_id, :opponent, :win?)
    end
end
