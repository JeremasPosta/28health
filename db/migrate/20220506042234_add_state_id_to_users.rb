class AddStateIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :state_id, :string
  end
end
