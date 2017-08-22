class BookingsController < ApplicationController

  bookings = [ {user: you, hairdresser: Pablo},
        {user: me, hairdressers: Alice}
      ]
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "new"
    end
  end
end
