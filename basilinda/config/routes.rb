Rails.application.routes.draw do


  get '/login', to: "session#login"
  post '/login', to: "session#create"
  get '/logout', to: "session#destroy"

  get '/signup', to: "users#new"
  post '/signup', to: "users#create"

  get '/dashboard', to: "users#show"

  post '/generate', to: "challenges#create"

  get '/challenges/:id/accept', to: "challenges#accept", as: "accept"
  patch '/challenges/:id', to: "challenges#update", as: "update"


  get '/challenges/:id/reject', to: "challenges#reject", as: "reject"
  get '/unlock/:id', to: "challenges#unlock", as: "unlock"


  root "homepage#show"

end
