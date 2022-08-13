class WeatherController < ApplicationController
  include HTTParty

  def index
    api_key = Rails.application.credentials.fetch(:api_key, '').freeze

    @weather_minsk = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?id=625143&lang=un&units=metric' + api_key)
    @weather_vitebsk = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?id=620127&lang=un&units=metric' + api_key)
    @weather_brest = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?id=629634&lang=un&units=metric' + api_key)
    @weather_mogilev = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?id=625665&lang=un&units=metric' + api_key)
    @weather_gomel = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?id=627907&lang=un&units=metric' + api_key)
    @weather_grodno = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?id=627904&lang=un&units=metric' + api_key)

    @weathers = [ @weather_minsk, @weather_vitebsk, @weather_brest, @weather_mogilev, @weather_gomel, @weather_grodno ]
  end
end
