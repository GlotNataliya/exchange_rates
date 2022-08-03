class WeatherController < ApplicationController
  include HTTParty

  def index
    url_minsk = Rails.application.credentials.regions.fetch(:url_minsk, '').freeze
    url_vitebsk = Rails.application.credentials.regions.fetch(:url_vitebsk, '').freeze
    url_brest = Rails.application.credentials.regions.fetch(:url_brest, '').freeze
    url_mogilev = Rails.application.credentials.regions.fetch(:url_mogilev, '').freeze
    url_gomel = Rails.application.credentials.regions.fetch(:url_gomel, '').freeze
    url_grodno = Rails.application.credentials.regions.fetch(:url_grodno, '').freeze
    @weather_minsk = HTTParty.get(url_minsk)
    @weather_vitebsk = HTTParty.get(url_vitebsk)
    @weather_brest = HTTParty.get(url_brest)
    @weather_mogilev = HTTParty.get(url_mogilev)
    @weather_gomel = HTTParty.get(url_gomel)
    @weather_grodno = HTTParty.get(url_grodno)
  end
end
