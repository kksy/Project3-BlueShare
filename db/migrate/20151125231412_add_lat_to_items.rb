class AddLatToItems < ActiveRecord::Migration
  def change
    add_column :items, :lat, :string
  end
end
