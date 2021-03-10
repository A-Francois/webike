class AddCityDepartureToRides < ActiveRecord::Migration[6.0]
  def change
    add_column :rides, :city_departure, :string
  end
end
