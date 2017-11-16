Rails.application.routes.draw do
  resources :meal_plans
  resources :taggings
  resources :user_tags
  resources :recipes

  # get '/users/:id' => 'pages#account'
  get '/account', to: 'pages#account', as: :current_user
  resources :users

  get '/sessions/new', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions/:id', to: 'sessions#destroy'

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
