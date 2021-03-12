class User < ApplicationRecord
  has_many :participants, dependent: :destroy
  has_many :rides, through: :participants
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
