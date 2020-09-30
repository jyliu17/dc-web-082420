Rails.application.routes.draw do
  resources :flags, only: [:index, :show, :new, :create]
  resources :users, only: [:new, :create]
  
  get 'best_flag', to: "flags#best_flag", as: "best_flag"

  get '/login', to: "sessions#login"
  post "/login", to: "sessions#process_login"
  delete "/logout", to: "sessions#logout"
end
