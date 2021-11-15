Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  get "/me", to: "users#show"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  #resources :users, only: [:show]
  #resources :sessions, only: [:create]
  #resources :sessions, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
