Rails3BootstrapDeviseCancan::Application.routes.draw do
  get "user_departments/create"

  get "user_departments/destroy"

  resources :units


  resources :material_types
  resources :material_groups
  resources :materials
  resources :events
  resources :departments do
    post "add_user"
    get "remove_user"
  end


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end