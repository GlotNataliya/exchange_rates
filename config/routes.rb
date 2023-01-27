# frozen_string_literal: true

Rails.application.routes.draw do
  resources :currency, only: %i[index]
  resources :currency_rf, only: %i[index]
  resources :region_weather, only: %i[index]
  resources :nasa_images, only: %i[index]
  resources :weathers

  root "currency#index"
end
