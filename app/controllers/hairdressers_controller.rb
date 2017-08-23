class HairdressersController < ApplicationController
  def index
    @hairdressers = Hairdresser.all
  end

  def show
    @hairdresser = Hairdresser.find(params[:id])
    @availability = Availability.new
  end

  def new
    @hairdresser = Hairdresser.new
  end

  def create
    @hairdresser = Hairdresser.new(hairdresser_params)
    @hairdresser.save
  end

  def search
    if params[:search][:city].blank?
      redirect_to hairdressers_path
    else
      @hairdressers = Hairdresser.where(city: params[:search][:city].capitalize)
      render :index
    end
  end

  private

  def hairdresser_params
    params.require(:hairdresser).permit(:description, :city, :location, :photo)
  end

end
