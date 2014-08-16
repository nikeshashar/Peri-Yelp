class RestaurantsController < ApplicationController
	before_action :authenticate_user!, except: [:index]

	def index
		@restaurants = Restaurant.all 
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(params[:restaurant].permit(:name, :location_name, :address))
		if @restaurant.save
			redirect_to '/restaurants'
		else
			render 'new'
		end
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
