class User < ApplicationRecord
  has_many :participants, dependent: :destroy
  has_many :rides, dependent: :destroy
  has_many :participant_rides, through: :participants, source: :ride
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true, uniqueness: true
  validates :firstname, presence: true, uniqueness: true
  validates :lastname, presence: true, uniqueness: true
  validates :pseudo, presence: true, uniqueness: true
  validate :photo?

  has_one_attached :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def participant?(ride)
    participant_rides.include?(ride)
  end

  def never_booked?(ride)
    participants.where(ride: ride).first.bookings.size == 0
  end

  def get_hotel_booked(ride)
    participants.where(ride: ride).first.bookings.first
  end

  def photo?
    unless photo.attached?
      errors.add(:photo, 'is missing')
    end
  end
end
