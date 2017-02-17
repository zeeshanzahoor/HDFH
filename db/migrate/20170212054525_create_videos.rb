class CreateVideos < ActiveRecord::Migration[5.0]
  def up
    create_table :videos do |t|
      t.string "Title"
      t.string "Url"
      t.integer "Match_Id"
      t.integer "Order"
    end
  end
  def down
    drop_table :videos
  end
end
