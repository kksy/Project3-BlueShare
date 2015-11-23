class AddItemsOnLoanToUser < ActiveRecord::Migration
  def change
    add_column :users, :Items_on_loan, :string
  end
end
