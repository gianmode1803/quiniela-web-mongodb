class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cedula, :string
    add_column :users, :nombre, :string
    add_column :users, :apellido, :string
    add_column :users, :telefono, :string
    add_column :users, :nacimiento, :date
    add_column :users, :estatus, :string
    add_column :users, :postal, :integer
    add_column :users, :admin, :boolean, default: false
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :instagram, :string
  end
end
