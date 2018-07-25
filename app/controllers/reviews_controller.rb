class ReviewsController < ApplicationController
 before_action :set_restaurant, only: [:new, :create]
	def index
		@reviews = Review.all 
	end	

	  def new
      # @review = Restaurant.review.build
      @review = Review.new
  	  end

 def create
    @review = Review.new(restaurant_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private
	  def set_restaurant
	    @restaurant = Restaurant.find(params[:restaurant_id])
	  end

	  def restaurant_params
	    params.require(:review).permit(:content, :rating)
	  end
end
