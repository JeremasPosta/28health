class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :ndc
      t.integer :qty
      t.integer :price
      t.text :instructions

      t.timestamps
    end
  end
end
