Rails.application.routes.draw do
  resources :users, only: [:index, :create]
  resources :trees, only: [:index]
end
