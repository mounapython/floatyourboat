class BoatsController < ApplicationController
  def index
    @boats= Boat.all
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.save
  end

  def show
    @boat = Boat.find(params[:id])
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :category, :price, :photo)
  end
end
