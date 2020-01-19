class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cars
  has_many :bookings
  has_many :bookings, through: :cars
  has_many :reviews, through: :bookings
  # validates :role, inclusion: { in: ['owner', 'customer'] }
end
