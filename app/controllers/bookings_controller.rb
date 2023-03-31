class BookingsController < ApplicationController

  def create
      @booking = Booking.new(booking_params)
      @booking.user = current_user
      @booking.boat = Boat.find(params[:boat_id])

      if @booking.save
        redirect_to boat_path(@booking.boat), notice: 'Booking was sucessfully processed'
      else
        render :new, status: :unprocessable_entity
      end
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
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to boat_bookings_path, status: :see_other
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
