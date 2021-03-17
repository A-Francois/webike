class AddParticipantIdToBooking < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :participant, null: false, foreign_key: true
  end
end
