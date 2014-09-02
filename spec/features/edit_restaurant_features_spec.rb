require 'rails_helper'

describe 'editing restaurants' do

	before do 
		@nikesh = User.create(email: 'n@n.com', password: '12345678', password_confirmation: '12345678')
		login_as @nikesh
		@nikesh.restaurants.create(name: 'Nandos', phone_number: '02089540598', location_name: 'shoreditch')
	end


	context 'logged in as restaurant creator' do 
		before do 
			login_as @nikesh
		end
		
		it 'should allow user to edit restaurant' do
			visit restaurants_path
			click_link 'Edit Nandos'
			
			fill_in 'Name', with: 'Nandos - Edgware'
			click_button 'Update Restaurant'
			
			expect(page).to have_content 'Nandos - Edgware'
			expect(current_path).to eq '/restaurants'
		end
	end

	context 'logged in as another user' do 
		before do 
			sonu = User.create(email: 's@s.com', password: '12345678', password_confirmation: '12345678')
			login_as sonu
		end
		it 'should show an error' do
			visit '/restaurants'
			click_link 'Edit Nandos'
			expect(page).to have_content 'This is not your restaurant'
		end
	end
end