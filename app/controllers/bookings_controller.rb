class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @hairdresser = Hairdresser.find(params[:hairdresser_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.hairdresser = Hairdresser.find(params[:hairdresser_id])
    @booking.user = current_user
    date = Date.strptime(params[:booking][:date] ,'%m/%d/%y')
    start_time = Time.strptime(params[:booking][:start_time] ,'%H:%M')
    end_time = Time.strptime(params[:booking][:end_time] ,'%H:%M')

    @booking.start_time = start_time
    @booking.end_time = end_time

    @booking.date = date

    if @booking.save
      redirect_to hairdresser_bookings_path(@booking)
    else
      render "show"
    end
  end

  def destroy
    booking = Booking.find(params[:id])

    booking.destroy
    redirect_to root
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :start_time, :end_time)
  end
end
