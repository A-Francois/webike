class AddHostelDescriptionToHotels < ActiveRecord::Migration[6.0]
  def change
    add_column :hotels, :hotel_description, :text
  end
end
