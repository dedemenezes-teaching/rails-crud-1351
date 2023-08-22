Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # verb + path
  # SYNTAX
  # verb '/path', to: 'controller_name#action'

  get '/restaurants', to: 'restaurants#index', as: 'restaurants'
  # 2. RECEIVE THE FORM SUBMISSION
  post '/restaurants', to: 'restaurants#create'

  # 1. DISPLAY THE FORM
  get '/restaurants/new', to: 'restaurants#new', as: 'new_restaurant'

  # 1. DISPLAY THE EDIT FORM
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'

  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # 2. RECEIVE THE EDIT FORM SUBMISSION
  patch '/restaurants/:id', to: 'restaurants#update'

  delete '/restaurants/:id', to: 'restaurants#destroy'
  # resources :restaurants, only: [:index]
end
