class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.integer :image_id
      t.string :loan_status
      t.float :price
      t.integer :report
      t.integer :user_id
      t.string :location

      t.timestamps null: false
    end
  end
end
