class HairdressersController < ApplicationController
  def index
    @hairdressers = Hairdresser.all
  end

  def show
    @hairdresser = Hairdresser.find(:id)
  end

  def new
    @hairdresser = Hairdresser.new
  end

  def create
    @hairdresser = Hairdresser.new(hairdresser_params)
    @hairdresser.save
  end

  def hairdresser_params
    params.require(:hairdresser).permit(:name, :description, :city, :location)
  end

end