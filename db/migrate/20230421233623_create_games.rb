class CreateGames < ActiveRecord::Migration[6.1]
  def change
  create_table :games do |t|
    t.integer :team_id
    t.string :opponent
    t.date :date
    t.string :location
    t.integer :team_score
    t.integer :opponent_score

    t.timestamps
  end
end
end
