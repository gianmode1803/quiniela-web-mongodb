class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :minuto
      t.string :tipo, limit: 40
      t.boolean :gol
      t.references :match, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
