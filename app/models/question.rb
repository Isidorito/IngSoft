class Question < ApplicationRecord

	belongs_to :accommodation, required: true
	#belongs_to :user
	validates :question,
		presence: true
end
