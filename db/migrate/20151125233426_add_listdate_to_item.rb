class AddListdateToItem < ActiveRecord::Migration
  def change
    add_column :items, :listdata, :string
  end
end
