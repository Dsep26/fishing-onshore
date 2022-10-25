class RemoveFishingSpotReferencesToHint < ActiveRecord::Migration[7.0]
  def change
    remove_reference :hints, :fishing_spot, index: true, foreign_key: true
  end
end
