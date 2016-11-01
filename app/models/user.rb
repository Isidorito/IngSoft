class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  GENDER_TYPES = [ "Hombre", "Mujer", "No estoy seguro" ]

  validates :sexo, inclusion: GENDER_TYPES
  validates :nick, presence: true, uniqueness: true       

         has_many :accomodations
         has_many :questions
         has_many :requests

end
