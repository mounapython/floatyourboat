class BoatsController < ApplicationController
  def index
    @boats= Boat.all
    if params[:query]
      @boats = Boat.search_by_category(params[:query])
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

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to boat_path(@boat), notice: 'Boat was sucessfully created'
    else
      render :new, status: :unprocessable_entity
    end

  end

  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
    @reviews = @boat.reviews
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :category, :price, :address, :photo)
  end
end
