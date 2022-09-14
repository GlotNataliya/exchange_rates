class NasaImagesController < ApplicationController
  include HTTParty

  def index
    api_key = Rails.application.credentials.fetch(:nasa_api_key, '').freeze

    random_date = Date.parse(Faker::Time.between(from: '1995-06-16', to: DateTime.now, format: :long)).strftime("%F")
    date = '&date=' + random_date
    base_uri = 'https://api.nasa.gov/planetary/apod?api_key=' + api_key + date
    @nasa_hash = self.class.get(base_uri)
    @date = Date.parse(@nasa_hash.fetch('date'))
  end
end
