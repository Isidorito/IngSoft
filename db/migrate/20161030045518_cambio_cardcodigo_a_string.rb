class CambioCardcodigoAString < ActiveRecord::Migration[5.0]
  def change
  	change_column :cards, :codigo, :string
  end
end
