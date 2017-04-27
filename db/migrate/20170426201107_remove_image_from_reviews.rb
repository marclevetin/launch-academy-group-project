class RemoveImageFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column(:reviews, :image_path)
  end
end
