class Restaurant < ActiveRecord::Base
	def to_param
		location_name
	end
end
