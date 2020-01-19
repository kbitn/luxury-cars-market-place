class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :brand, presence: true
  validates :milage, presence: true
  validates :car_model, presence: true
  validates :price_per_hour, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch::Model
  pg_search_scope :search_car,
    against: [:brand, :price_per_hour, :car_model, :transmission, :year],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
