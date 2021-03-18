class AddRideToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :ride, null: false, foreign_key: true
  end
end
