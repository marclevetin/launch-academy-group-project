class AddOmelettesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :omelettes do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :ingredients, null: false

      t.belongs_to :user
    end
  end
end
