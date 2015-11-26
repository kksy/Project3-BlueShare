class AddCityToItems < ActiveRecord::Migration
  def change
    add_column :items, :city, :string
  end
end
