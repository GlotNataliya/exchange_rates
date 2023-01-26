class RegionWeatherController < ApplicationController
  include HTTParty

  def index
    api_key = Rails.application.credentials.fetch(:api_key, '').freeze

    @weather_minsk = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?id=625143&appid=#{api_key}&lang=un&units=metric")
    @weather_vitebsk = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?id=620127&appid=#{api_key}&lang=un&units=metric")
    @weather_brest = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?id=629634&appid=#{api_key}&lang=un&units=metric")
    @weather_mogilev = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?id=625665&appid=#{api_key}&lang=un&units=metric")
    @weather_gomel = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?id=627907&appid=#{api_key}&lang=un&units=metric")
    @weather_grodno = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?id=627904&appid=#{api_key}&lang=un&units=metric")

    @weathers = [ @weather_minsk, @weather_vitebsk, @weather_brest, @weather_mogilev, @weather_gomel, @weather_grodno ]
  end
end
