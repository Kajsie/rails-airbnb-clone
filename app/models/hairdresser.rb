class Hairdresser < ApplicationRecord
  has_attachment :photo
  belongs_to :user
  has_many :bookings
  has_many :availabilities
  validates :city, :location, :description, presence: true

  #def open?,
   # if
  # end
end
