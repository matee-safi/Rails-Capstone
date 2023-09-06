Rails.application.routes.draw do
  devise_for :users
  resources :recipe_foods
  resources :recipes, only: [:index,:new,:create,:show,:destroy]
  resources :foods 
  resources :users

  get 'public_recipes', to: 'public_recipes#index'
  get 'general_shopping_list', to: 'general_shopping_list#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
