class CreateProductsUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :products_users do |t|
      t.belongs_to :product
      t.belongs_to :user

      t.timestamps
    end
  end
end
