class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hairdresser
  validates_presence_of :start_time, :end_time
end
