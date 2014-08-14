require 'rails_helper'

describe 'endorsing reviews' do 
	before do
		nandos = Restaurant.create(name: 'Nandos', location_name: 'Shoreditch')
		nandos.reviews.create(rating: 5, comments: 'Peri-licious')
	end

	it 'can like reviews updating the reviews like count', js: true do 
		visit restaurants_path
		click_link 'Like'
		expect(page).to have_content '1 likes'
	end
end