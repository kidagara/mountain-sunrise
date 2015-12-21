Rails.application.routes.draw do
  get 'sessions/new'

  get "log_out", to: "sessions#destroy", as: "log_out"
  get "log_in", to: "sessions#create", as: "log_in"
  get "sign_up", to: "users#new", as: "sign_up"
  
  resources :users, :sessions, :dealers, :arizona

  root to: "home#index"
end
