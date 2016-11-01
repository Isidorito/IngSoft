class FixInicializacionGenero < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :sexo, :string, default: 'Hombre'
  end
end
