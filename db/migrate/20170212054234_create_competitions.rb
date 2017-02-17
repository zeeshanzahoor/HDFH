class CreateCompetitions < ActiveRecord::Migration[5.0]
  def up
    create_table :competitions do |t|
      t.string "Name"
      t.string "CanonicalName"
      t.integer "Order"
    end
  end
  def down
    drop_table :competitions
  end
end
