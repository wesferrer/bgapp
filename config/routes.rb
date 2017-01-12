Rails.application.routes.draw do

  root "users#index"
  resources :users, only: [:new, :create]
  resources :games

  resources :sessions, only: [:new, :create, :destroy]
  # Create a better looking URL for logging in
  get '/login', to: 'sessions#new'
end
