class AgregarCamposUsersDatos < ActiveRecord::Migration[5.0]
  def change

  	add_column :users, :nombre, :string
  	add_column :users, :vip, :boolean
  	add_column :users, :puntos, :float

  end
end
