class Hairdresser < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :availabilities
  validates :city, :location, :description, presence: true

  #def open?,
   # if
  # end
end
