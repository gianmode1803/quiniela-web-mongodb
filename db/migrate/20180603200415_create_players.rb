class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :nombre
      t.string :apellido
      t.datetime :fecha_nacimiento
      t.string :ciudad_nacimiento
      t.string :posicion
      t.integer :dorsal
      t.string :apodo
      t.datetime :debut
      t.integer :participaciones
      t.string :foto
      t.integer :goles
      t.integer :country_id

      t.timestamps
    end
  end
end
