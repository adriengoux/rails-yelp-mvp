class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: :show

  def create
    @restaurant = Restaurant.new(restaurant_params)

    redirect_to restaurants_path
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @review = Review.new
    @review.restaurant = @restaurant
  end

  def index
    @restaurants = Restaurant.all
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
