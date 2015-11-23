class CreateItemImages < ActiveRecord::Migration
  def change
    create_table :item_images do |t|
      t.string :image_path
      t.integer :item_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
