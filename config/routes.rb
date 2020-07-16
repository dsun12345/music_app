Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  
  resources :playlists 
  resources :songs
  get '/', to: 'users#new', as: 'user'
  post '/', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/:user', to: 'users#show', as: 'homepage'

end
