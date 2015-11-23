class CreateProfileAvatars < ActiveRecord::Migration
  def change
    create_table :profile_avatars do |t|
      t.string :image_path
      t.string :user_id

      t.timestamps null: false
    end
  end
end
