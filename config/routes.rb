Roomidex::Application.routes.draw do
  
  resources :roomidex_requests
  post '/roomidex_requests/:user_id/:receiver_id/accept' => 'roomidex_requests#accept', :as => :accept_roomidex_requests
  post '/roomidex_requests/:user_id/:receiver_id/ignore' => 'roomidex_requests#ignore', :as => :ignore_roomidex_requests

  resources :roomidex_relationships

  root :to => "splash_page#index"

  resources :users

  # Auth resources
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'

  resources :conversations, only: [:index, :show, :new, :create] do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end
end
