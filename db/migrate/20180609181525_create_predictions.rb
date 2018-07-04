class CreatePredictions < ActiveRecord::Migration[5.0]
  def change
    create_table :predictions do |t|
      t.references :calendar, foreign_key: true
      t.references :pool, foreign_key: true

      t.timestamps
    end
  end
end
