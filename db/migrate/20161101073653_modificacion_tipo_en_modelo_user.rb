class ModificacionTipoEnModeloUser < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :sexo, :string
  end
end
