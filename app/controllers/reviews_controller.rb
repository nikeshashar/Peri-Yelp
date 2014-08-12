class ReviewsController < ApplicationController
	def new
		@restaurant = Restaurant.find_by_location_name(params[:restaurant_id])
		@review = Review.new 
	end

	def create
		@restaurant = Restaurant.find_by_location_name(params[:restaurant_id])
		@restaurant.reviews.create(params[:review].permit(:rating, :comments))
		redirect_to '/restaurants'		
	end
end
