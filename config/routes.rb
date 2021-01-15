Rails.application.routes.draw do

  get '/songs', to: 'songs#index', as: 'songs'
  get '/songs/new', to: 'songs#new', as: 'new_song'
  post '/songs', to: 'songs#create'
  get '/songs/:id', to: 'songs#show', as: 'song'
  get '/songs/:id/edit', to: 'songs#edit', as: 'edit_song'
  patch '/songs/:id', to: 'songs#update'
  delete '/songs/:id', to: 'songs#destroy'
  # resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
