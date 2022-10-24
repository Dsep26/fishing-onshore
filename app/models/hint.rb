class Hint < ApplicationRecord
  # Validations
  validates :description, presence: true
  validates :equipment, presence: true
  has_one_attached :photo
end
