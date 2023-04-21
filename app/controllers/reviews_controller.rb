class ReviewsController < ApplicationController
  def create
    @painting = Painting.find(params[:painting_id])
    @review = @painting.reviews.new(review_params)
    if @review.save
      redirect_to painting_path(@painting), notice: 'Review was successfully created.'
    else
      redirect_to painting_path(@painting), alert: 'Error creating review. Please make sure all fields are filled in correctly.'
    end
  end

  private

  def review_params
    params.require(:review).permit(:reviewer, :rating, :comment)
  end
end
