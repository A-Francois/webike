class AddRideIdToStep < ActiveRecord::Migration[6.0]
  def change
    add_reference :steps, :ride, null: false, foreign_key: true
  end
end
