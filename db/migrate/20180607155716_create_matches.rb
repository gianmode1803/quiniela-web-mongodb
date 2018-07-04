class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.integer :posesion
      t.references :calendar, foreign_key: true
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
