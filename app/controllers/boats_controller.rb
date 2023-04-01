class BoatsController < ApplicationController
  def index
    @boats= Boat.all
    if params[:query]
      @boats = Boat.search_by_category(params[:query])
    end

    if params[:query] == "All"
      @boats = Boat.all
    else
      @boats = Boat.search_by_category(params[:query])
    end

    if @boats.empty?
      flash.now[:notice] = "No boats found for the selected category."
    end







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

  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
    @reviews = @boat.reviews
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :category, :price, :photo)
  end
end
