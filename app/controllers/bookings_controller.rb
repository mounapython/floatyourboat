class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
      @booking = Booking.new(booking_params)

      if @booking.save
        redirect_to @booking, notice: 'Booking was sucessfully processed'
      else
        render :new, status: :unprocessable_entity
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
      if @booking.update(booking_params)
        redirect_to @booking
      else
        render :edit, status: :unprocessable_entity
  end

  def destroy
    @booking.destroy
    redirect_to new_booking_path
  end
end

private

def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end
