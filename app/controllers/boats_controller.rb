class BoatsController < ApplicationController
  def index
    @boats= Boat.all
    @markers = @boats.geocoded.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {boat: boat}),
        marker_html: render_to_string(partial: "marker", locals: {boat: boat})
      }
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
