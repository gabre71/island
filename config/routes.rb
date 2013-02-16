Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :units


  resources :material_types
  resources :material_groups
  resources :materials
  resources :events
  resources :departments


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end