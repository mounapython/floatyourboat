class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.boat = Boat.find(params[:boat_id])

    if @review.save
      redirect_to boat_path(@review.boat), notice: 'review was sucessfully created'
    else
      render :new, alert: "Story was successfully destroyed."


    end
  end



  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
