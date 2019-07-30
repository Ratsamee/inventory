Rails.application.routes.draw do
  root :to => "products#index"
  resources :categories
  resources :products
  resources :users
  resources :inventories, :except => [:destroy]
end