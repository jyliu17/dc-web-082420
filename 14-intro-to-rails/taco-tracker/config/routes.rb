Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/hello_world", to: "static#hello_world"
  get "/about", to: "static#about"
  get "/favorites", to: "static#favorites", as: "faves"

  get "/hello_people", to: "application#hello_people"

end
