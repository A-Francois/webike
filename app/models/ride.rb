class Ride < ApplicationRecord
  belongs_to :user

  geocoded_by :city_departure
  geocoded_by :city_arrival
  after_validation :geocode, if: :will_save_change_to_city_departure?
  after_validation :geocode, if: :will_save_change_to_city_arrival?

  has_one_attached :photo
end
