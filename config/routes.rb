Rails.application.routes.draw do
  
  #resources :songs
get "/artists/", to: "artists#index", as: "artists"
get "/artists/new", to: "artists#new", as: "new_artist"
post "/artists/",to: "artists#create"
get "/artists/:id", to: "artists#show", as: "artist"

get "/instruments/", to: "instruments#index", as: "instruments"
get "/instruments/new", to: "instruments#new", as: "new_instrument"
post "/instruments", to: "instruments#create" 
get "/instruments/:id", to: "instruments#show", as: "instrument"

get "/songs/", to: "songs#index", as: "songs"
get "/songs/new", to: "songs#new", as: "new_song"
post "/songs", to: "songs#create" 
get "/songs/:id", to: "songs#show", as: "song"


end
