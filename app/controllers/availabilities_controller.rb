class AvailabilitiesController < ApplicationController
  def new
  end

  def create
    @availability = Availability.new(availability_params)
    @availability.save
  end

  private

  def availability_params
    params.require(:availability).permit(:weekday, :open_time, :closing_time, :hairdresser_id)
  end
end
