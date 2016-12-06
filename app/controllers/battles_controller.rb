# frozen_string_literal: true
class BattlesController < ProtectedController
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
    @battle = current_user.battles.build(battle_params)

    if @battle.save
      render json: @battle, status: :created
    else
      render json: @battle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /battles/1
  # PATCH/PUT /battles/1.json
  def update
    @battle = Battle.find(params[:id])
    @battle.u_val = rand(100)
    @battle.f_val = rand(100)
    @battle.win = if @battle.u_val >= @battle.f_val
                  true
                  else
                    false
    end

    if @battle.update(battle_params)
      render json: @battle
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
    @battle = current_user.battles.find(params[:id])
  end

  def battle_params
    params.require(:battle).permit(:f_val, :u_val, :my_fighter, :opponent, :win, :fighter_id, :user_id)
  end
end
