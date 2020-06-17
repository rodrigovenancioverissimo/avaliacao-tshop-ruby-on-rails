Rails.application.routes.draw do

  resources :users
  resources :items
  resources :businesses

  get    '/signup',       to: 'users#new'

  get    '/login',        to: 'sessions#new'
  post   '/login',        to: 'sessions#create'
  delete '/logout',       to: 'sessions#destroy'

  root 'home#index'
end
