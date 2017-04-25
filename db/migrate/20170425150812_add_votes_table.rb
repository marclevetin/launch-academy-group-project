class AddVotesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :vote, null: false
      t.belongs_to :review
      t.belongs_to :reg_user

      t.timestamps null: false
    end
  end
end
