class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :postcode
      t.string :email
      t.string :profile_avatar

      t.timestamps null: false
    end
  end
end
