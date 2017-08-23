class HairdressersController < ApplicationController

  def index
    @hairdressers = Hairdresser.where.not(latitude: nil, longitude: nil)

puts ENV['GOOGLE_API_BROWSER_KEY']

    @hash = Gmaps4rails.build_markers(@hairdressers) do |hairdresser, marker|
      marker.lat hairdresser.latitude
      marker.lng hairdresser.longitude
      # marker.infowindow render_to_string(partial: "/hairdressers/map_box", locals: { flat: flat })
    end
  end
  # def index
  #   @hairdressers = Hairdresser.all
  # end

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
