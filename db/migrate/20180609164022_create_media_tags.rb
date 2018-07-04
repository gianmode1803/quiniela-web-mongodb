class CreateMediaTags < ActiveRecord::Migration[5.0]
  def change
    create_table :media_tags do |t|
      t.references :medium, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
