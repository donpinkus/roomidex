Roomidex::Application.routes.draw do
  
  resources :roomidex_relationships

  root :to => "splash_page#index"

  resources :users

  # Auth resources
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
