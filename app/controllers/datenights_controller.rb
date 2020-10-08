class DatenightsController < ApplicationController
  before_action :set_datenight, only: [:show, :update, :destroy]

  # GET /datenights
  def index
    @datenights = Datenight.all

    render json: @datenights
  end

  # GET /datenights/1
  def show
    render json: @datenight
  end

  # POST /datenights
  def create
    @datenight = Datenight.new(datenight_params)

    if @datenight.save
      render json: @datenight, status: :created, location: @datenight
    else
      render json: @datenight.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /datenights/1
  def update
    if @datenight.update(datenight_params)
      render json: @datenight
    else
      render json: @datenight.errors, status: :unprocessable_entity
    end
  end

  # DELETE /datenights/1
  def destroy
    @datenight.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datenight
      @datenight = Datenight.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def datenight_params
      params.require(:datenight).permit(:category, :title, :instructions, :items)
    end
end
