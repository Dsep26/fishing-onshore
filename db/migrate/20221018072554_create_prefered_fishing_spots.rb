class CreatePreferedFishingSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :prefered_fishing_spots do |t|
      t.references :user, null: false, foreign_key: true
      t.references :fishing_spot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
