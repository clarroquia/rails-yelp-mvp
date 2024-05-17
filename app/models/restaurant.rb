class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # validations ----------------

  validates :name, :address, :category, presence: true
  allowed_types = ["chinese", "italian", "japanese", "french", "belgian"]
  validates_inclusion_of :category, in: allowed_types
end
