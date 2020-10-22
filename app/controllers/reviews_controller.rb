class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.save!
    @restaurant = @review.restaurant

    redirect_to restaurant_path(@restaurant)
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :restaurant_id)
  end
end
