class BookingsController < ApplicationController
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

  def destroy
    booking = Booking.find(params[:id])

    booking.destroy
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :start_time, :end_time, :hairdresser_id)
  end
end
