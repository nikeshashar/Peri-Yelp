class LikesController < ApplicationController
	def create
		@review = Review.find(params[:review_id])
		@review.likes.create		
		
		render json: { new_likes_count: @review.likes.count }
	end

	def index

	end
end
