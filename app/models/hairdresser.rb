class Hairdresser < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :availabilities
  validates_presence_of :city, :location, :description

  #def open?
   # if
  # end
end
