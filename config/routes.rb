Rails.application.routes.draw do

  root "landings#index"
  # get '/plays/new', to: 'plays#new_new'
  # post '/plays', to: 'plays#create_new'
  resources :users, only: [:new, :create] do
    resources :games
    resources :locations
  end


  #resources :games
  resources :plays
  post 'add_play' => 'plays#create'
  resources :landings
  resources :games
  #todo: finish comments
  #resources :comments
  #resources :locations

  resources :sessions, only: [:new, :create, :destroy]
  # Create a better looking URL for logging in
  get '/login', to: 'sessions#new'
end
