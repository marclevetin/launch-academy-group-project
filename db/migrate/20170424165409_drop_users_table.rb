class DropUsersTable < ActiveRecord::Migration[5.0]
  def up
    drop_table(:users)
  end

  def down
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :encrypted_password, null: false
      t.string :picture_path
      t.string :role, null: false

      t.timestamps null: false
    end
  end
end
