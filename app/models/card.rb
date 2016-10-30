class Card < ApplicationRecord

	validates :nombre,
		presence: true

	validates :apellido,
		presence: true

	validates :direccion,
		presence: true

	validates :cp,
		presence: true

	validates :ciudad,
		presence: true

	validates :pais,
		presence: true

	#validates :email,
	#	presence: true,

	validates_format_of :email,:with => Devise::email_regexp	

	validates :tipo,
		presence: true

	validates_numericality_of :numero, :in => 1..9999999999999999
	validates_length_of :numero, :minimum => 16, :maximum => 16, :allow_blank => false

	validates :vencimiento,
		presence: true

	validates_length_of :codigo, :minimum => 3, :maximum => 3, :allow_blank => false	

end
