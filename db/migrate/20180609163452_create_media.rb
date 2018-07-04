class CreateMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :media do |t|
      t.string :url
      t.string :nombre
      t.string :tipo
      t.date :fecha
      t.integer :ancho
      t.integer :alto
      t.integer :size
      t.string :descripcion

      t.timestamps
    end
  end
end
