class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all 
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		Restaurant.create(params[:restaurant].permit(:name, :location_name, :address))
		redirect_to '/restaurants'
	end

	def edit
		@restaurant = Restaurant.find_by_location_name(params[:id])
	end

	def update
		@restaurant = Restaurant.find_by_location_name(params[:id])
		@restaurant.update(params[:restaurant].permit(:name, :location_name, :address))
		redirect_to '/restaurants'
	end

	def destroy
		@restaurant = Restaurant.find_by_location_name(params[:id])
		@restaurant.destroy
		flash[:notice] = 'Restaurant deleted successfully'
		redirect_to '/restaurants'
	end
end
