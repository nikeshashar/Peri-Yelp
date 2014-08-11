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

	context 'restaurant features' do 
		before do 
			Restaurant.create(name: 'Nandos', cuisine: 'Chicken', phone_number: '02089540598')
		end

		it 'should have a cuisine' do 
			visit '/restaurants'
			expect(page).to have_content 'Chicken'
		end

		it 'should have an telephone number' do 
			visit 'restaurants'
			expect(page).to have_content '02089540598'
		end

	end

end