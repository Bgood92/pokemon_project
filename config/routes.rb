Rails.application.routes.draw do
  get 'about/index'

  resources :generations
  resources :types
  resources :pokemons

  get 'about', to: 'about#index'
end
