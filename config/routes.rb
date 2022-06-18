# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "home#index"
  get "home/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  scope :api do
    resources :speedtests, only: %i[create index]
  end
end
