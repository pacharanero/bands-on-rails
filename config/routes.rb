Rails.application.routes.draw do

  devise_for :users
  root to: 'songs#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :venues
  resources :gigs
  resources :set_lists
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
