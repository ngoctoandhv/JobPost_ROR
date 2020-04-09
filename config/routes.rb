Rails.application.routes.draw do
  resources :post_jobs
  resources :employers
  resources :candidates
  devise_for :users
  root 'blog#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
