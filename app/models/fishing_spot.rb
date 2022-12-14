# class GoodnessValidator < ActiveModel::Validator
#   def validate(record)
#     if record.address.nil?
#       validates :latitude, :longitude, presence: true
#       record.errors.add :base, "Both Latitudes and Longitudes must be filled"
#       # record.errors.add :base, "This person is evil"
#     else
#       validates :address, presence: true
#       record.errors.add :base, "Address must be filled"
#     end
#   end
# end

class FishingSpot < ApplicationRecord
  geocoded_by :address
  # Associations
  has_many :prefered_fishing_spots, dependent: :destroy
  has_one_attached :photo

  # Validations
  validates :fishing_activity, presence: true
  validates :address, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  # validates_with GoodnessValidator
  after_validation :geocode, if: :will_save_change_to_address?

end
