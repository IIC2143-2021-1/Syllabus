Rails.application.routes.draw do
  resources :songs
  resources :guidelines
  resources :books
  # HOME
  get 'home/home'
  root to: 'home#home'

  # MEMES
  get 'home/memes', to: 'home#memes', as: 'home_memes'

  # CREATE
  get 'games/new', to: 'games#new', as: 'games_new'
  post 'games', to: 'games#create'

  # READ
  get 'games/index', to: 'games#index', as: 'games_index'
  get 'games/:id', to: 'games#show', as: 'games_show'

  # UPDATE
  get 'games/:id/edit', to: 'games#edit', as: 'games_edit'
  patch 'games/:id', to: 'games#update', as: 'games_update'

  # DELETE
  delete 'games/:id', to: 'games#delete', as: 'games_delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
