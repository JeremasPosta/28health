class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbreviation
      t.boolean :service_offered, default: false
      t.integer :min_age

      t.timestamps
    end
  end
end
