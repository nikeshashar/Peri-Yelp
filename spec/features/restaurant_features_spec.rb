require 'rails_helper'

	describe 'restaurants' do 

		it 'should have no restaurants' do 
			visit '/restaurants'
			expect(page).to have_content 'No restaurants yet'
			expect(page).to have_link 'Add a restaurant'
		end

	context 'restaurants have been added' do 
		before do 
			Restaurant.create(name: 'Nandos', location_name: 'shoreditch')
		end

		it 'should display them' do 
			visit '/restaurants'
			expect(page).to have_content 'Nandos'
		end
	end

	context 'restaurant features' do 
		before do 
			Restaurant.create(name: 'Nandos', phone_number: '02089540598', location_name: 'shoreditch', address: '1 Nandos Road')
		end

		it 'should have an telephone number' do 
			visit '/restaurants'
			expect(page).to have_content '02089540598'
		end

		it 'should have an address field' do 
			visit '/restaurants'
			expect(page).to have_content '1 Nandos Road'
		end
	end


	context 'creating restaurants' do
		it 'should fill in a form with the details and end up on the index page' do
			visit '/restaurants'
			click_link 'Add a restaurant'
			fill_in 'Name', with: "Nandos"
			fill_in 'Location name', with: 'shoreditch'
			click_button 'Create Restaurant'
			expect(page).to have_content 'Nandos'
			expect(current_path).to eq '/restaurants'
		end
	end

	context 'editing restaurants' do
		before do 
			Restaurant.create(name: 'Nandos', phone_number: '02089540598', location_name: 'shoreditch')
		end

		it 'should allow user to edit restaurant' do
			visit '/restaurants'
			click_link 'Edit Nandos'
			fill_in 'Name', with: 'Nandos - Edgware'
			click_button 'Update Restaurant'
			expect(page).to have_content 'Nandos - Edgware'
			expect(current_path).to eq '/restaurants'
		end
	end

	context 'deleting restaurants' do
		before do 
			Restaurant.create(name: 'Nandos', phone_number: '02089540598', location_name: 'shoreditch')
		end

		it 'should remove restaurant when user clicks delete link' do
			visit '/restaurants'
			click_link 'Delete Nandos'
			expect(page).not_to have_content 'shoreditch'
			expect(page).to have_content 'Restaurant deleted successfully'
		end
	end

end