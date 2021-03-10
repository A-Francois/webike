class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.integer :order
      t.date :departure_date
      t.date :arrival_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
