class RemoveLatitudeAndLongitudeFromRides < ActiveRecord::Migration[6.0]
  def change
    remove_column :rides, :latitude
    remove_column :rides, :longitude
  end
end
