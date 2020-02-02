Rails.application.routes.draw do
  resources :movelists
  resources :technical_machines
  resources :pokemons
  root "pokemons#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
