class AddColumnaFotoToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :foto, :string
  end
end
