class CreateGoalPools < ActiveRecord::Migration[5.0]
  def change
    create_table :goal_pools do |t|
      t.integer :cantidad
      t.references :prediction, foreign_key: true
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
