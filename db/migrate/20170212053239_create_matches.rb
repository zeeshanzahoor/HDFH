class CreateMatches < ActiveRecord::Migration[5.0]
  def up
    create_table :matches do |t|
      t.datetime "DatePlayed"
      t.string "Status"
      t.integer "HomeTeamId"
      t.integer "AwayTeamId"
      t.integer "CompetitionId"
      t.string "Score"
      t.string "CoverPicture"
    end
  end
  def down
    drop_table :matches
  end
end
