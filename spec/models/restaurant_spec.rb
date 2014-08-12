require 'rails_helper'

RSpec.describe Restaurant, :type => :model do

	context 'create restaurant' do 
		it 'can create a new restaurant' do
	      	Restaurant.create(name: "Nandos", location_name: 'shoreditch')
	      	expect(Restaurant.count).to eq 1
	    end

	    it 'cannot create a restaurant with a blank name' do 
      		Restaurant.create(name: "")
      		expect(Restaurant.count).to eq 0
    	end

    	it 'cannot create a restaurant with no location name' do 
    		Restaurant.create(name: "Nandos", location_name: "")
    		expect(Restaurant.count).to eq 0
    	end
    	it 'cannot create a restaurant with a duplicate location name' do 
    		Restaurant.create(name: "Nandos", location_name: 'shoreditch')
    		Restaurant.create(name: "Nandos", location_name: 'shoreditch')
    		expect(Restaurant.count).to eq 1
    	end
	end
end