class CreateFishingSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :fishing_spots do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :fishing_activity

      t.timestamps
    end
  end
end
