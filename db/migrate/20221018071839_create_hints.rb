class CreateHints < ActiveRecord::Migration[7.0]
  def change
    create_table :hints do |t|
      t.text :description
      t.string :equipment
      t.references :fishing_spot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
