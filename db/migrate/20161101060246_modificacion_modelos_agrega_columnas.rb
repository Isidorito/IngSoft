class ModificacionModelosAgregaColumnas < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :apellido, :string
  	add_column :users, :nacimiento, :date
  	add_column :users, :sexo, :boolean, default: true
  	add_column :users, :nick, :string
  	add_column :users, :nacionalidad, :string
  end
end
