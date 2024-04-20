Rails.application.routes.draw do
  resources :weight_trackers, only: [:create]
  devise_for :users, controllers:{
    
    sessions: 'users/sessions',
    registrations: 'users/registrations'

  }
  resources :weights, only: [:create]
  resources :one_rep_maxes
  get 'about', to: 'pages#about'
  get 'trends', to: 'pages#trends'
  get 'routine', to: 'pages#routine'
  get 'routine2', to: 'pages#routine2'
  get 'routine3', to: 'pages#routine3'
  get 'routine4', to: 'pages#routine4'
  resources :one_rep_maxes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  
    root "pages#home"




end
