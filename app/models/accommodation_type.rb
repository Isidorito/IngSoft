class AccommodationType < ApplicationRecord

	validates :nombre,
		presence: true,
		uniqueness: true

	has_many :accomodations	

end
