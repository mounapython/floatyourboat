class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end



  def create
      @booking = Booking.new(booking_params)

      if @booking.save
        redirect_to booking_path(@booking)
      else

  end




  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end


#def create
 # @bookmark = Bookmark.new(bookmark_params)
  #@bookmark.list = @list
  #if @bookmark.save
   # redirect_to list_path(@list)
  #else
   # @review = Review.new
    #render :new, status: :unprocessable_entity
  #end
#end

#def destroy
 # @bookmark.destroy
  #redirect_to list_path(@bookmark.list), status: :see_other
#end

#private

#def bookmark_params
 # params.require(:bookmark).permit(:comment, :movie_id)
#end

#def set_bookmark
 # @bookmark = Bookmark.find(params[:id])
#end

#def set_list
 # @list = List.find(params[:list_id])
#end
