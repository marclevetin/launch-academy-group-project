class AddOmelettesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :omlettes do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :ingredients
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
