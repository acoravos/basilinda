Rails.application.routes.draw do

  get '/login', to: "session#login"
  post '/login', to: "session#create"

  get '/logout', to: "session#logout"

  root "homepage#show"

end
