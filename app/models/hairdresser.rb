class Hairdresser < ApplicationRecord
  has_attachment :photo
  belongs_to :user
  has_many :bookings
  has_many :availabilities
  validates :city, :location, :description, presence: true

  geocoded_by :street
  after_validation :geocode, if: :street_changed?

  #def open?,
   # if
  # end
end
