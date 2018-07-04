class CreateStadia < ActiveRecord::Migration[5.0]
  def change
    create_table :stadia do |t|
      t.text :ciudad
      t.integer :capacidad
      t.string :nombre

      t.timestamps
    end
  end
end
