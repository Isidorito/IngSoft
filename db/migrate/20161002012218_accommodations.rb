class Accommodations < ActiveRecord::Migration[5.0]
  def change
  		change_column :accommodations, :puntaje, :integer, default: 0
  		change_column :accommodations, :activo, :boolean, default: true 
  		change_column :accommodations, :cantidad_personas, :integer, default: 1
  		
  end
end
