class Hairdresser < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :availabilities


  #def open?
   # if
  # end
end
