class CambioLimiteNumeroTarjeta < ActiveRecord::Migration[5.0]
  def change
     change_column :cards, :numero, :integer, limit: 8
   end 
end
