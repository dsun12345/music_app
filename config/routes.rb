Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'songs', to:'songs#index', as: 'songs'
  # get '/songs/new', to: 'songs#new', as: 'new_song'
  # get '/songs/:id', to: 'songs#show', as: 'song'
  # get '/songs/:id/edit', to: 'songs#edit', as: 'edit_song'
  # patch '/songs/:id', to: 'songs#update'
  # post '/songs', to: 'songs#create'
  # resources :songs
  # get '/users/new', to: 'users#new', as: 'new_user'
  # root 'static_pages#home'
  # get '/users', to:'users#index', as: 'users'
  # post '/users', to:'users#create'
  # get '/users/:id', to: 'users#show', as: 'user'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # get '/signin', to: 'session#new', as: 'signin'
  # post '/session', to: 'session#create', as: 'session'
  # delete '/session/', to: 'session#destroy'
  # post '/rides', to:"rides#create", as: 'rides'

  root to: "pages#home"
  
  resources :genres do 
    resources :songs  
  end 


end
