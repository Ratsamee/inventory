Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :categories
  resources :products
  resources :users
  resources :inventories, :except => [:destroy]
  resources :customers
  get '/login' => 'session#new', :as => :login
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end