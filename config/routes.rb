Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'pages#home'
  resources :photos
  resources :videos
  resources :inscriptions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
