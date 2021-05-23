Rails.application.routes.draw do
  ## Movements
  get 'movements/new', to: 'movements#new'
  post 'movements', to: 'movements#create'
  # Read
  get 'movements/index', to: 'movements#index'
  get 'movements/:id', to: 'movements#show', as: 'movement'
  # Update
  get 'movements/:id/edit', to: 'movements#edit', as: 'movement_edit'
  patch 'movements/:id', to: 'movements#update', as: 'movement_update'
  # Delete
  delete 'movements/:id', to: 'movements#delete'

  ## Pokemons
  get 'pokemons/new', to: 'pokemons#new'
  post 'pokemons', to: 'pokemons#create'
  # Read
  get 'pokemons/index', to: 'pokemons#index'
  get 'pokemons/:id', to: 'pokemons#show', as: 'pokemon'
  # Update
  get 'pokemons/:id/edit', to: 'pokemons#edit', as: 'pokemon_edit'
  patch 'pokemons/:id', to: 'pokemons#update', as: 'pokemon_update'
  # Delete
  delete 'pokemons/:id', to: 'pokemons#delete'

  ## Trainers
  get 'trainers/new', to: 'trainers#new'
  post 'trainers', to: 'trainers#create'
  # Read
  get 'trainers/index', to: 'trainers#index'
  get 'trainers/:id', to: 'trainers#show', as: 'trainer'
  # Update
  get 'trainers/:id/edit', to: 'trainers#edit', as: 'trainer_edit'
  patch 'trainers/:id', to: 'trainers#update', as: 'trainer_update'
  # Delete
  delete 'trainers/:id', to: 'trainers#delete'


  get 'home_page/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home_page#index'
end
