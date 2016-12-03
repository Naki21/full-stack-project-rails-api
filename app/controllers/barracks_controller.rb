class BarracksController < ApplicationController
  before_action :set_barrack, only: [:show, :update, :destroy]

  # GET /barracks
  # GET /barracks.json
  def index
    @barracks = Barrack.all

    render json: @barracks
  end

  # GET /barracks/1
  # GET /barracks/1.json
  def show
    render json: @barrack
  end

  # POST /barracks
  # POST /barracks.json
  def create
    @barrack = Barrack.new(barrack_params)

    if @barrack.save
      render json: @barrack, status: :created
    else
      render json: @barrack.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /barracks/1
  # PATCH/PUT /barracks/1.json
  def update
    @barrack = Barrack.find(params[:id])

    if @barrack.update(barrack_params)
      head :no_content
    else
      render json: @barrack.errors, status: :unprocessable_entity
    end
  end

  # DELETE /barracks/1
  # DELETE /barracks/1.json
  def destroy
    @barrack.destroy

    head :no_content
  end

  private

    def set_barrack
      @barrack = Barrack.find(params[:id])
    end

    def barrack_params
      params.require(:barrack).permit(:user_id, :fighter_id, :url)
    end
end
