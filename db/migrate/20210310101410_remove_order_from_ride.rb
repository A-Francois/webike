class RemoveOrderFromRide < ActiveRecord::Migration[6.0]
  def change
    remove_column :rides, :order, :integer
  end
end
