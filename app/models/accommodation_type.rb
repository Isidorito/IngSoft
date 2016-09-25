class AccommodationType < ApplicationRecord

	validates :nombre,
		presence: true,
		uniqueness: true

end
