module ReviewsHelper

	def star_rating(rating)
		return rating unless rating.respond_to?(:round)

		'★' * rating.round
	end
end
