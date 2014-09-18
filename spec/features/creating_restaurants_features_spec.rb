require 'rails_helper'

context 'logged out' do 
	it 'should take us to a sign up page' do 
		visit '/restaurants'
		click_link 'Add a restaurant'
		expect(page).to have_content 'Sign up'
	end
end

context 'logged in' do 
	before do
		nikesh = User.create(email: 'n@n.com', password: '12345678', password_confirmation: '12345678')
		login_as nikesh
	end

	context 'creating a restaurant' do
		it 'should fill in a form with the details and end up on the index page' do
			visit '/restaurants'
			click_link 'Add a restaurant'
			fill_in 'Name', with: "Nandos"
			fill_in 'Location name', with: 'shoreditch'
			click_button 'Create Restaurant'
			expect(page).to have_content 'Nandos'
			expect(current_path).to eq '/restaurants'
		end

		it 'should show a new form page if the details are not filled in properly' do 
			visit '/restaurants'
			click_link 'Add a restaurant'
			fill_in 'Name', with: "Nandos"
			fill_in 'Location name', with: 'shoreditch'
			click_button 'Create Restaurant'
			expect(current_path).to eq '/restaurants'
		end
	end
end
