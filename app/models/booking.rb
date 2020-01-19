class Booking < ApplicationRecord
  has_one :review
  validates :renting_time, presence: true
  belongs_to :user
  belongs_to :car
  validates :user_id, uniqueness: { scope: :car_id }
  validates :status, inclusion: { in: ['pending', 'accepted', 'declined'] }
end
