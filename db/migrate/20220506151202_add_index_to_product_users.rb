class AddIndexToProductUsers < ActiveRecord::Migration[6.1]
  def change
    add_index :products_users, [:product_id, :user_id], :unique => true
  end
end
