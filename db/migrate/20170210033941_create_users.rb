class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.string "Name"
      t.string "UserName"
      t.string "Password"
      t.timestamps
    end
  end
  def down
    drop_table :users
  end
end
