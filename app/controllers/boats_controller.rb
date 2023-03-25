class BoatsController < ApplicationController
  def index
    @boats= Boat.all
    if params[:query]
      @boats = Boat.search_by_category(params[:query])
    end
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.save
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :category, :price, :photo)
  end
end
