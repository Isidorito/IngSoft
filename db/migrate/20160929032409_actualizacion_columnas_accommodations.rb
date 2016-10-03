class ActualizacionColumnasAccommodations < ActiveRecord::Migration[5.0]
  def change
  	add_column :accommodations, :nombre, :string
  	rename_column :accommodations, :cantidadPersonas, :cantidad_personas
  	rename_column :accommodations, :disponible, :activo
  end
end
