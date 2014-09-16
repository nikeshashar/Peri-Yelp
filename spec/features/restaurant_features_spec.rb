require 'rails_helper'
describe 'Restaurant Features' do
	context 'restaurants' do 
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
end


	context 'logged in' do 

		context 'deleting restaurants' do
			before do 
				Restaurant.create(name: 'Nandos', phone_number: '02089540598', location_name: 'shoreditch')
				nikesh = User.create(email: 'n@n.com', password: '12345678', password_confirmation: '12345678')
				login_as nikesh
			end

			it 'should remove restaurant when user clicks delete link' do
				visit '/restaurants'
				click_link 'Delete Nandos'
				expect(page).not_to have_content 'shoreditch'
				expect(page).to have_content 'Restaurant deleted successfully'
			end
		end
	end
end