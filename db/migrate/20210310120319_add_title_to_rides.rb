class AddTitleToRides < ActiveRecord::Migration[6.0]
  def change
    add_column :rides, :title, :string
  end
end
