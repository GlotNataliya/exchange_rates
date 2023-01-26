class WeathersController < ApplicationController
  def index
    @cities = Weather.city_names.keys
    @city_name = Weather.last&.city || @city_name = "Minsk"
    @weather = WeatherPage.new(@city_name).call
  end

  def create
    select_city = Weather.new(city: params[:city])
    select_city.save

    redirect_to weathers_path
  end
end
