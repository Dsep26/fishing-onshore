class CreateDiscussionas < ActiveRecord::Migration[7.0]
  def change
    create_table :discussionas do |t|

      t.timestamps
    end
  end
end
