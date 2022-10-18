class PreferedFishingSpot < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :fishing_spot
end
