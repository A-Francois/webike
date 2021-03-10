class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :order
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
