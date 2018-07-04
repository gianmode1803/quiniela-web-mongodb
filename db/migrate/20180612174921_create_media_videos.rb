class CreateMediaVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :media_videos do |t|
      t.string :url
      t.string :titulo
      t.string :descripcion
      t.date :fecha

      t.timestamps
    end
  end
end
