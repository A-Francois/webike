class Booking < ApplicationRecord
	belongs_to :hotel
	belongs_to :participant

	validates :booking_start, presence: true
	validates :booking_end, presence: true
end
