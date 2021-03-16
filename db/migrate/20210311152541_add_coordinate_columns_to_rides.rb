class AddCoordinateColumnsToRides < ActiveRecord::Migration[6.0]
  def change
    add_column :rides, :start_lat, :float
    add_column :rides, :start_long, :float
    add_column :rides, :end_lat, :float
    add_column :rides, :end_long, :float
  end
end
