class Review < ActiveRecord::Base

	VALID_RATINGS = (1..5)
	belongs_to :restaurant
	has_many :likes
	validates :rating, inclusion: VALID_RATINGS
	validates :restaurant_id, presence: true


end
