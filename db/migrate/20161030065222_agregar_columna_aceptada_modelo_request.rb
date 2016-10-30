class AgregarColumnaAceptadaModeloRequest < ActiveRecord::Migration[5.0]
  def change
  	add_column :requests, :ok, :boolean, default: false 
  end
end
