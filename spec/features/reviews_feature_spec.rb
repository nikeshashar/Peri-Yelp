require 'rails_helper'
	
context 'logged out' do 
	it 'does not show the review form' do
		visit '/restaurants'
		expect(page).not_to have_field('comments')
	end
end

context 'logged in' do 
	describe 'reviewing restaurants' do 
		before do
			nikesh = User.create(email: 'n@n.com', password: '12345678', password_confirmation: '12345678')
			login_as nikesh
			nikesh.restaurants.create(name: 'Nandos', location_name: 'Shoreditch')
		end

		it 'allows users to leave a review using a form which appear alongside restaurants' do 			
			leave_review('I liked it', 3)
			expect(current_path).to eq restaurants_path
			expect(page).to have_content 'I liked it (★★★)'
		end

		it 'will display the average rating from all reviews' do 
			leave_review('I liked it', 3)
			sonu = User.create(email: 's@s.com', password: '12345678', password_confirmation: '12345678')
			login_as sonu
			leave_review('Great', 5)
			expect(page).to have_content '★★★★' 
		end

		it 'does not allow users to leave duplicate reviews' do 
			leave_review('I liked it', 3)
			expect(page).not_to have_link 'Review Nandos, Shoreditch'
		end
	end
end
