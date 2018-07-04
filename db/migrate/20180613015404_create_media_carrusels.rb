class CreateMediaCarrusels < ActiveRecord::Migration[5.0]
  def change
    create_table :media_carrusels do |t|

      t.timestamps
    end
  end
end
