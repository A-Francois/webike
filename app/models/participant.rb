class Participant < ApplicationRecord
  belongs_to :ride
  belongs_to :user
  has_many :bookings, dependent: :destroy
end
