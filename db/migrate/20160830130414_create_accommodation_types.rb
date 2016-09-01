class CreateAccommodationTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :accommodation_types do |t|
      t.string :nombre
      t.boolean :activo, default:true 

      t.timestamps
    end
  end
end
