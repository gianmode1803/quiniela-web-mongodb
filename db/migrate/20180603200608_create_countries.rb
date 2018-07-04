class CreateCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :countries do |t|
      t.string :nombre
      t.string :apodo
      t.string :escudo
      t.string :bandera
      t.string :grupo

      t.timestamps
    end
  end
end
