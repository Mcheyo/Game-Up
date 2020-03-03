Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   
  resources :user_games 
  resources :games 
  resources :users
  post '/login', to: 'auth#fake_create'
  end 

