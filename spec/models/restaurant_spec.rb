require 'rails_helper'

RSpec.describe Restaurant, :type => :model do

  let(:restaurant) { Restaurant.create(name: 'Nandos', location_name: 'Shoreditch') }

  describe '#average_rating' do
    let(:user) { User.create(email: 'a@a.com', password: '12345678', password_confirmation: '12345678') }
    let(:user2) { User.create(email: 'b@b.com', password: '12345678', password_confirmation: '12345678') }

    context 'no reviews' do 
      it 'returns N/A message' do
        expect(restaurant.average_rating).to eq 'N/A'
      end
    end

    context '1 review' do 
      it 'returns that rating' do 
        restaurant.reviews.create(rating: 4)
        expect(restaurant.average_rating).to eq 4
      end
    end

    context 'multiple reviews' do 
      it 'returns the average of all ratings' do 
        restaurant.reviews.create(rating: 3, user: user)
        restaurant.reviews.create(rating: 5, user: user2)
        expect(restaurant.average_rating).to eq 4
      end

      it 'returns a float if the average is a non whole number' do 
        restaurant.reviews.create(rating: 4, user: user)
        restaurant.reviews.create(rating: 5, user: user2)
        expect(restaurant.average_rating).to eq 4.5
      end
    end
  end

  describe 'validations for creating a restaurant' do 
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