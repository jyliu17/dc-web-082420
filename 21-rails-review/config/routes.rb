Rails.application.routes.draw do
  resources :planets
  resources :scientists
  resources :missions, only: [:new, :create]

  get "/about", to: "application#about"
  get "/delete_scientist/:id", to: "scientists#destroy", as: "delete_scientist"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
