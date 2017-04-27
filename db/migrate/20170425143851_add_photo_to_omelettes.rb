class AddPhotoToOmelettes < ActiveRecord::Migration[5.0]
  def change
    add_column :omelettes, :photo, :string
  end
end
