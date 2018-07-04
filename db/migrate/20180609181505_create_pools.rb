class CreatePools < ActiveRecord::Migration[5.0]
  def change
    create_table :pools do |t|
      t.integer :puntos
      t.string :tipo, limit: 50
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
