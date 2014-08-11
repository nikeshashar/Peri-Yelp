class Restaurant < ActiveRecord::Base
	def to_param
		location_name
	end

	validates :name, presence: true
	validates :location_name, uniqueness: true, presence: true

end
