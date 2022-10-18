class Hint < ApplicationRecord
  # Associations
  belongs_to :fishing_spot
  # Validations
  validates :description, presence: true
  validates :equipment, presence: true
end
