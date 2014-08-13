class Restaurant < ActiveRecord::Base
	def to_param
		location_name
	end

	has_many :reviews, dependent: :destroy

	validates :name, presence: true
	validates :location_name, uniqueness: true, presence: true

	def average_rating
		return 'N/A' if reviews.none?

		reviews.inject(0) do |sum, review|
			sum + review.rating 
		end
	end

end
