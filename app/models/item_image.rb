class ItemImage < ActiveRecord::Base
  belongs_to :item
  mount_uploader :image_path, ImageUploader
end
