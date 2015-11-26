class AddPostcodeToItems < ActiveRecord::Migration
  def change
    add_column :items, :postcode, :integer
  end
end
