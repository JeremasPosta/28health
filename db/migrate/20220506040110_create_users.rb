class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.datetime :date_of_birth

      t.timestamps
    end
    add_reference :users, :state
  end
end
