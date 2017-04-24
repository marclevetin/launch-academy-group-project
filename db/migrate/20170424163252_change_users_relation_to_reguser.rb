class ChangeUsersRelationToReguser < ActiveRecord::Migration[5.0]
  def change
    rename_column(:reviews, :user_id, :reg_user_id)
  end
end
