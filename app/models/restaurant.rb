class Restaurant < ActiveRecord::Base
	def to_param
		location_name
	end

	has_many :reviews

	validates :name, presence: true
	validates :location_name, uniqueness: true, presence: true

end
