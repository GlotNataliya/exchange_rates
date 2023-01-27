# frozen_string_literal: true

class CurrencyRfController < ApplicationController
  include HTTParty

  def index
    base_uri = "https://www.cbr-xml-daily.ru/daily_json.js"
    json = self.class.get(base_uri, format: :json)
    @currency_hash = json["Valute"].values
    @date = Date.parse(json.fetch("Timestamp"))
  end
end
