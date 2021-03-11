class AddHotelIdToBooking < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :hotel, null: false, foreign_key: true
  end
end
