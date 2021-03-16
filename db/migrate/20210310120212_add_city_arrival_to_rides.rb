class AddCityArrivalToRides < ActiveRecord::Migration[6.0]
  def change
    add_column :rides, :city_arrival, :string
  end
end
