class Request < ApplicationRecord

	belongs_to :accommodation, required: true
	belongs_to :user, required: true

end
