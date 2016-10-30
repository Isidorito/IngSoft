class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.integer :cp
      t.string :ciudad
      t.string :pais
      t.string :email
      t.string :tipo
      t.integer :numero
      t.date :vencimiento
      t.integer :codigo

      t.timestamps
    end
  end
end
