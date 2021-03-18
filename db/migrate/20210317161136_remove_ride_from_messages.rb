class RemoveRideFromMessages < ActiveRecord::Migration[6.0]
  def change
    remove_reference :messages, :ride, null: false, foreign_key: true
  end
end
