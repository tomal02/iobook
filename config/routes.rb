Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'home/index'
  root to: 'home#index'

  resources :posts


  get "/posts/:id", to: "posts#show"
  get "/feed", to: "feed#newsfeed"
  end

