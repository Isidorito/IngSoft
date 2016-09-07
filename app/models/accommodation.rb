class Accommodation < ApplicationRecord

	
def self.index(search)
#  where(    'accommodation_type_id ILIKE ?' ||
#			'foto ILIKE ?' ||
#			'user_id ILIKE ?' ||
#			'puntaje ILIKE ?' ||
#			'cantidadPersonas ILIKE ?' ||
#			'direccion ILIKE ?' ||	
#			'descripcion ILIKE ?' ).all


  if search

  		where( "direccion ILIKE ?", "%#{search}%")

  else
  		last(10)	
  end						
end	

end	