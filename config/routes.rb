Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :stations, only: [:index, :show]

  root to: 'stations#index'
end
