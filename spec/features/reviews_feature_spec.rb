require 'rails_helper'

	context 'reviewing restaurants' do 
		before do
			Restaurant.create(name: 'Nandos', location_name: 'Shoreditch')
		end

		it 'allows users to leave a review using a form which appear alongside restaurants' do 
			visit restaurants_path
			click_link 'Review Nandos Shoreditch'
			fill_in 'Grill Skill', with: 'I liked it'
			select '3', from: 'Rating'
			click_button 'Review Nandos, Shoreditch'
			expect(current_path).to eq restaurants_path
			expect(page).to have_content 'I liked it (3)'
		end

	end
