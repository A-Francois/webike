class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :booking_start
      t.date :booking_end

      t.timestamps
    end
  end
end
