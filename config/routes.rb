Rails.application.routes.draw do
  resources :employers
  resources :candidates
  devise_for :users, :controllers => { sessions: "sessions", registrations: "registrations" }
  root 'blog#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
