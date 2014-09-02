class Review < ActiveRecord::Base

	VALID_RATINGS = (1..5)
	belongs_to :restaurant
	belongs_to :user
	has_many :likes
	validates :rating, inclusion: VALID_RATINGS
	validates :restaurant_id, presence: true
	validates :user, uniqueness: { scope: :restaurant_id, message: 'has already reviewed this restaurant.'}


end
