class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hairdresser
  validates_presence_of :start_time, :end_time, :date, :user
  validates :hairdresser, uniqueness: { scope: [:date, :start_time, :end_time] }
  # validate :booking_not_in_range
  validate :check_date
  # validates :booking_not_overlap

  private

  # def booking_not_in_range # checks that a new booking is not intersecting with an existing one
    # if Booking.all = all_bookings
      # all_bookings.select do |booking|
      # :start_time.between?(booking.start_time, booking.end_time)
    # end
      # errors.add(:booking, "Test error")
    # end
  # end

  #   if Booking.where(((:hairdresser_id == hairdresser) && (:date == date)) &&
  #    (start_time.between?(:start_time, :end_time) || end_time.between?(:start_time, :end_time))
  #     errors.add(:booking, "Booking already taken")
  #   end
  #   # ensure that the time slot is not taken
  # end

  def check_date
    if date < Date.today
      errors.add(:booking, "Can't book a date in the past")
    end
  end

  # def booking_not_overlap # checks that an existing booking is not within the new booking
  # end

end

