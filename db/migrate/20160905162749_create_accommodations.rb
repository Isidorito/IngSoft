class CreateAccommodations < ActiveRecord::Migration[5.0]
  def change
    create_table :accommodations do |t|
      t.integer :accomodation_type_id
      t.string :foto
      t.integer :user_id
      t.integer :puntaje
      t.integer :cantidadPersonas
      t.boolean :disponible
      t.string :direccion
      t.string :descripcion
      t.string :string

      t.timestamps
    end
  end
end
