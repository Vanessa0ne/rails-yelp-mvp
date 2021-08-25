class ReviewsController < ApplicationController
    before_action :set_restaurant, only: %i[new create]
  def new
    @review = Review.new  # we need @restaurant in our "simple_form_for"
end

  def create
    @review = Review.new(review_params)
end

  private

  def set_restaurant
  @restaurant = Restaurant.find([:restaurant_id])
end
  def review_params
    params.require(:review).permit(content, :rating)
  end
end
