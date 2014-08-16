require 'rails_helper'
	
	context 'logged out' do 
		it 'does not show the review form' do
			visit '/restaurants'
			expect(page).not_to have_field('comments')
		end
	end

	context 'logged in' do 
		context 'reviewing restaurants' do 
			before do
				Restaurant.create(name: 'Nandos', location_name: 'Shoreditch')
			end

			it 'allows users to leave a review using a form which appear alongside restaurants' do 			
				leave_review('I liked it', 3)
				expect(current_path).to eq restaurants_path
				expect(page).to have_content 'I liked it (★★★)'
			end

			it 'will display the average rating from all reviews' do 
				leave_review('I liked it', 3)
				leave_review('Great', 5)
				expect(page).to have_content 'Average Rating: ★★★★' 
			end
		end
	end
