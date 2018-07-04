class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :titulo
      t.string :cuerpo
      t.date :fecha
      t.string :autor
      t.boolean :destacado

      t.timestamps
    end
  end
end
