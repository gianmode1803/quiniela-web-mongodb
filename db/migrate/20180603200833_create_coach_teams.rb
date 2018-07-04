class CreateCoachTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :coach_teams do |t|
      t.datetime :debut
      t.references :country, foreign_key: true
      t.references :coach, foreign_key: true

      t.timestamps
    end
  end
end
