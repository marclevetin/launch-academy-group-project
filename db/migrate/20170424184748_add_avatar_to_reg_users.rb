class AddAvatarToRegUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :reg_users, :avatar, :string
  end
end
