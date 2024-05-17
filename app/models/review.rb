class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true

  # validations -------------------------

  allowed_ratings = (0..5)
  validates_inclusion_of :rating, in: allowed_ratings
  validates :rating, numericality: { only_integer: true }
end
