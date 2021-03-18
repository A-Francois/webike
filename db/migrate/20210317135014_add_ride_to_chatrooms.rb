class AddRideToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :ride, null: false, foreign_key: true
  end
end
