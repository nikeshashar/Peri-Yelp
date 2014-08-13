require 'rails_helper'

	context 'reviewing restaurants' do 
		before do
			Restaurant.create(name: 'Nandos', location_name: 'Shoreditch')
		end

		it 'allows users to leave a review using a form which appear alongside restaurants' do 			
			leave_review('I liked it', 3)
			expect(current_path).to eq restaurants_path
			expect(page).to have_content 'I liked it (3)'
		end

		it 'will display the average rating from all reviews' do 
			leave_review('I liked it', 3)
			leave_review('Great', 5)
			expect(page).to have_content 'Average Rating: 4' 
		end
	end
