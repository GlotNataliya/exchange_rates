class CurrencyRfController < ApplicationController
  include HTTParty

  def index
    base_uri = 'https://www.cbr-xml-daily.ru/daily_json.js'
    json = HTTParty.get(URI.parse(base_uri))
    hash = JSON.parse(json)
    @currency_hash = hash['Valute'].values
    @date = Date.parse(hash.fetch('Timestamp')).strftime("%B %e, %Y")
  end
end
