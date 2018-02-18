Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :friendships
  resources :schools
  resources :trash_items
  resources :trashes
  
  get '/users', to: 'users#index'

  root 'users#index'
end
