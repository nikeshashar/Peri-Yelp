class Review < ActiveRecord::Base

	VALID_RATINGS = (1..5)
	belongs_to :restaurant
	validates :rating, inclusion: VALID_RATINGS
end
