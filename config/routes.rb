Rails.application.routes.draw do
  get 'currency_rf/index'
  get 'weather/index'
  get 'currency/index'

  root 'currency#index'
end
