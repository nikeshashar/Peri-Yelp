class AddLocationNameToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :location_name, :string
  end
end
