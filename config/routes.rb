Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  
  resources :playlists 
  resources :songs
  resources :users
  resources :session
  # get '/', to: 'users#new', as: 'user' 
  # post '/', to: 'users#create'
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # get '/:user', to: 'users#show', as: 'homepage'


  # get '/users/new', to: 'users#new', as: 'new_user'
  # get '/users', to:'users#index', as: 'users'
  # post '/users', to:'users#create'
  # get '/users/:id', to: 'users#show', as: 'user'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # get '/signin', to: 'session#new', as: 'signin'
  # post '/session', to: 'session#create', as: 'session'
  # delete '/session/', to: 'session#destroy'
  
end
