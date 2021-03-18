class ChangeDescriptionToRides < ActiveRecord::Migration[6.0]
  def change
    change_column :rides, :ride_description, :text
  end
end
