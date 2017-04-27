class ChangeOmelettesToUseRegusers < ActiveRecord::Migration[5.0]
  def change
    rename_column(:omelettes, :user_id, :reg_user_id)
  end
end
