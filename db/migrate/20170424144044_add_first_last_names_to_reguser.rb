class AddFirstLastNamesToReguser < ActiveRecord::Migration[5.0]
  def change
    add_column :reg_users, :first_name, :string, null:false
    add_column :reg_users, :last_name, :string, null:false
  end
end
