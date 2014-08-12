class Restaurant < ActiveRecord::Base
	def to_param
		location_name
	end

	has_many :reviews, dependent: :destroy

	# validates :name, presence: true
	validates :name, length: { minimum: 6 }
	validates :location_name, uniqueness: true, presence: true

end
