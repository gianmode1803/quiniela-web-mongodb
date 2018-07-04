class CreateCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :coaches do |t|
      t.string :nombre
      t.string :apellido
      t.string :apodo
      t.datetime :fecha_nacimiento
      t.string :ciudad_nacimiento

      t.timestamps
    end
  end
end
