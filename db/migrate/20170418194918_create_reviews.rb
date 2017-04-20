class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.string :image_path
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
