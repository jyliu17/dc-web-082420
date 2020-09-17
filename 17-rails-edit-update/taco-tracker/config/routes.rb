Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/hello_world", to: "static#hello_world"
  get "/greetings/:name", to: "static#greetings", as: "foo"
  get "/about", to: "static#about"
  get "/faves", to: "static#favorites", as: "faves"

  get "/hello_people", to: "application#hello_people"

  # get "/tacos", to: "tacos#index" # office 200
  # get "/tacos/new", to: "tacos#new"
  # post "/tacos", to: "tacos#create"
  # get "/tacos/:id", to: "tacos#show", as: "taco"

  resources :tacos, only: [:new, :create, :index, :show]
  
  get "/print_to_console", to: "tacos#print"

end
