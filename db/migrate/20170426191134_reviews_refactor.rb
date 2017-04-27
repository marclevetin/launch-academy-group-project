class ReviewsRefactor < ActiveRecord::Migration[5.0]
  def change
    change_table :reviews do |t|
      t.remove :title
      t.integer :rating, null: false

      t.belongs_to :omelette
    end
  end
end
