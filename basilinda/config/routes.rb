Rails.application.routes.draw do

  get '/login', to: "session#login"
  post '/login', to: "session#show"

  get '/logout', to: "session#logout"

  root "homepage#show"

end
