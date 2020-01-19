class Review < ApplicationRecord
  belongs_to :booking
  validates :content, presence: true
  validates :content, length: { maximum: 60 }
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end
