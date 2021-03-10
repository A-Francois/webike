class AddRideDescriptionToRides < ActiveRecord::Migration[6.0]
  def change
    add_column :rides, :ride_description, :string
  end
end
