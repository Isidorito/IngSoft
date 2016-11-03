class Accommodation < ApplicationRecord

	belongs_to :user, required: true
	belongs_to :accommodation_type, required: true
	has_many :questions
	has_many :requests
	after_initialize :init

  validates :nombre,
    presence: true
    
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

 def init
      self.puntaje = rand(0..100)
 end     
end	