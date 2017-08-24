class Hairdresser < ApplicationRecord
  has_attachments :photos, maximum: 3
  belongs_to :user
  has_many :bookings
  has_many :availabilities
  validates :city, :location, :description, presence: true

  # call this on booking instance that is created from user
  # def open?
    # booking made in booking form then:

    # retrieves the date the booking wants to be made and converts it into weekday
    # day_of_week = @booking.date.wday
    # gives the start time of the requested booking
    # start_time = @booking.start_time
    # gives the end time of the requested booking
    # end_time = @booking.end_time

    # retrieve hairdresser and its availability
    # hairdresser_chosen = @booking.hairdresser
    # availability = @availability.hairdresser_chosen

    # gives working weekday of hairdresser
    # weekday = availability.weekday
    # gives the open time of the hairdresser
    # open_time = availability.open_time
    # gives the closing time of the hairdresser
    # closing_time = availability.closing_time

    # if day_of_week == weekday && (start_time.between?(open_time, closing_time) && end_time.between?(open_time, closing_time))
      # return true
    # else
      # return false
    # end
  #end 
  geocoded_by :street
  after_validation :geocode, if: :street_changed?
end





