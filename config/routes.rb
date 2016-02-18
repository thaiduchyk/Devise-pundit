Rails.application.routes.draw do
  get 'omniauth_callbacks/google_oauth2'

  root to: 'visitors#index'
  devise_for :users, :controllers => { omniauth_callbacks: "omniauth_callbacks" }
  resources :users
end
