class AddLngToItems < ActiveRecord::Migration
  def change
    add_column :items, :lng, :string
  end
end
