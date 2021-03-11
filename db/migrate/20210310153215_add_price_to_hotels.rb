class AddPriceToHotels < ActiveRecord::Migration[6.0]
  def change
    add_column :hotels, :price, :text
  end
end
