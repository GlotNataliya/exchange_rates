class CurrencyController < ApplicationController
  include HTTParty

  def index
    base_uri = 'https://www.nbrb.by/api/exrates/rates?periodicity=0'
    @currency_hash = self.class.get(base_uri)
    @date = Date.parse(@currency_hash.first.fetch('Date'))
  end
end
