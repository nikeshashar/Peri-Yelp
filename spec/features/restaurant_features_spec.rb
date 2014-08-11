require 'rails_helper'

	describe 'restaurants' do 

		it 'should have no restaurants' do 
			visit '/restaurants'
			expect(page).to have_content 'No restaurants yet'
			expect(page).to have_link 'Add a restaurant'
		end

	context 'restaurants have been added' do 
		before do 
			Restaurant.create(name: 'Nandos')
		end

		it 'should display them' do 
			visit '/restaurants'
			expect(page).to have_content 'Nandos'
		end
	end
end