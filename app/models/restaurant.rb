class Restaurant < ActiveRecord::Base
	def to_param
		location_name
	end

	has_many :reviews, dependent: :destroy
	belongs_to :user
	validates :name, presence: true
	validates :location_name, uniqueness: true, presence: true

	def average_rating
		return 'N/A' if reviews.none?
		reviews.average(:rating)
	end

	def has_been_reviewed_by?(user)
		reviews.find_by(user: user)
	end
end
