class Review < ApplicationRecord
  RATINGS = (0..5).to_a

  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5).to_a }
  validates :rating, numericality: { only_integer: true }
end
