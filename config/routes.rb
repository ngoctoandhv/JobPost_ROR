Rails.application.routes.draw do
  root 'blog#index'

  resources :employers
  resources :candidates
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
