class AddOmeletteIdToReviews < ActiveRecord::Migration[5.0]
  def change
    change_table :reviews do |t|
      t.belongs_to :omelette, null: false
    end
  end
end
