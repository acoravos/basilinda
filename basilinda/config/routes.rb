Rails.application.routes.draw do

  get '/login', to: "session#login"
  post '/login', to: "session#create"

  get '/logout', to: "session#destroy"

  root "homepage#show"

end
