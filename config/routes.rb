Rails.application.routes.draw do
  root :to => 'session#new'
  resources :categories
  resources :products
  resources :users
  # resources :inventories, :except => [:destroy]
  get '/login' => 'session#new', :as => :login_path
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end