require 'rails_helper'

RSpec.describe Review, :type => :model do
  	
  	context 'review score validation' do 

  		it 'is valid with a rating between 1 and 5 and associated with a restaurant' do 
  			restaurant = Restaurant.create(name: 'Nandos', location_name: 'Shoreditch')
  			review = restaurant.reviews.new(rating: 5)
			expect(review).to be_valid
  		end

		it 'is invalid if the rating is > 5' do 
			review = Review.new(rating: 10)
			expect(review).to have(1).error_on(:rating)
		end

		it 'is invalid if the rating is < 1' do 
			review = Review.new(rating: -5)
			expect(review).to have(1).error_on(:rating)
		end

		it 'is invalid if not associated with a restaurant' do 
			review = Review.new(rating: 5)
			expect(review).to have(1).error_on(:restaurant_id)
		end
	end

end
