class AddImagePathBackupToItemImages < ActiveRecord::Migration
  def change
    add_column :item_images, :image_path_backup, :string
  end
end
