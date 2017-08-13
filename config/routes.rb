Rails.application.routes.draw do

  resources :images
  resources :menus
  resources :contact_forms
  get '/about', to: 'users#about', as: 'about'
  get '/admin', to: 'sessions#new', as: 'admin'

  resources :events
  root 'events#home'
  resources :sessions, only: [:new, :create, :destroy]

  resources :password_resets
  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
