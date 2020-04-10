Rails.application.routes.draw do
  root 'blog#index'

  resources :employers
  resources :candidates
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
