class CreateCalendars < ActiveRecord::Migration[5.0]
  def change
    create_table :calendars do |t|
      t.text :fase
      t.date :fecha
      t.time :hora
      t.references :stadium, foreign_key: true

      t.timestamps
    end
  end
end
