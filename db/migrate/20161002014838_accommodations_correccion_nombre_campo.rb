class AccommodationsCorreccionNombreCampo < ActiveRecord::Migration[5.0]
  def change
  	rename_column :accommodations, :accomodation_type_id, :accommodation_type_id
  end
end
