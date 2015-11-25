class AddItemDetailsToItems < ActiveRecord::Migration
  def change
    add_column :items, :item_details, :string
  end
end
