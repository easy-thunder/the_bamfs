Rails.application.routes.draw do
  resources :map_weapon_squares
  resources :user_weapons
  resources :weapons
  resources :users
  
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
