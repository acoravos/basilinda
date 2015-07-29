Rails.application.routes.draw do


  get '/login', to: "session#login"
  post '/login', to: "session#create"
  get '/logout', to: "session#destroy"

  get '/signup', to: "users#new"
  post '/signup', to: "users#create"

  get '/dashboard', to: "users#show"

  post '/generate', to: "challenges#create"


  root "homepage#show"

end
