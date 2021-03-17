class Ride < ApplicationRecord
  belongs_to :user
  has_many :participants, dependent: :destroy

  #after_validation :geocode, if: :will_save_change_to_city_departure?
  #after_validation :geocode, if: :will_save_change_to_city_arrival?
  before_save :geocode_the_start_address
  before_save :geocode_the_end_address

  validates :title, presence: true
  validates :departure_date, presence: true
  validates :arrival_date, presence: true
  validates :city_departure, presence: true
  validates :city_arrival, presence: true
  validate :photo?

  has_one_attached :photo

  def geocode_the_start_address
    coords = Geocoder.coordinates(self.city_departure)
    self.start_lat = coords[0]
    self.start_long = coords[1]
  end

  def geocode_the_end_address
    coords = Geocoder.coordinates(self.city_arrival)
    self.end_lat = coords[0]
    self.end_long = coords[1]
  end

  def photo?
    unless photo.attached?
      errors.add(:photo, 'is missing')
    end
  end
end
