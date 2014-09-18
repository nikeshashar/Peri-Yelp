class ReviewsController < ApplicationController
	def new
		@restaurant = Restaurant.find_by_location_name(params[:restaurant_id])
		@review = Review.new 
	end

	def create
		@restaurant = Restaurant.find_by_location_name(params[:restaurant_id])
		@review = @restaurant.reviews.new(params[:review].permit(:rating, :comments))
		@review.user = current_user
		if @review.save
			redirect_to '/restaurants'
		end
	end
end
