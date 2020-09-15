Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/hello_world", to: "static#hello_world"
  get "/greetings/:name", to: "static#greetings", as: "foo"
  get "/about", to: "static#about"
  get "/favorites", to: "static#favorites", as: "faves"

  get "/hello_people", to: "application#hello_people"

  get "/tacos", to: "tacos#index"
  get "/tacos/:id", to: "tacos#show", as: "taco"

end
