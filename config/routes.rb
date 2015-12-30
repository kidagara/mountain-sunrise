Rails.application.routes.draw do
  get 'sessions/new'

  get "log_out", to: "sessions#destroy", as: "log_out"
  get "log_in", to: "sessions#create", as: "log_in"
  get "sign_up", to: "users#new", as: "sign_up"
  
  resources :users, :sessions, :dealers, :arizona, :california, :colorado, :florida, :idaho, :nevada, :utah
  resources :reports, :faqs, :contact

  namespace :products do
  	namespace :pellets do
  		get "/alfalfatimothy(/:action)", controller: :alfalfatimothy, as: :alfalfatimothy
  		root to: "base#index"
  	end
  	namespace :compactbales do
  		get "/elite(/:action)", controller: :elite, as: :elite
  		root to: "base#index"
  	end
  	root to: "base#index"
  end

  root to: "home#index"
end
