# frozen_string_literal: true

class WeatherPage
  def initialize(city_name)
    @city_name = city_name
    @api_key = Rails.application.credentials.fetch(:api_key, "").freeze
  end

  def call
    HTTParty.get("https://api.openweathermap.org/data/2.5/weather?q=#{@city_name}&appid=#{@api_key}&units=metric")
  end
end
